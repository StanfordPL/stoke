import Data.Char
import Data.List
import Data.List.Split
import System.Environment
import Text.Regex
import Text.Regex.TDFA

--------------------------------------------------------------------------------
-- Row Data Types 
-- Corresponds to the rows in x86.csv
--------------------------------------------------------------------------------

-- Instruction Row Type
data Instr =
  Instr { opcode      :: String -- Regular expression-ish hex encoding
        , instruction :: String -- Regular expression-ish name and type
        , op_en       :: String -- Operand type/position tags
        , property    :: String -- Operand read/write/undef properties
        , imp_read    :: String -- Implicit read set				
        , imp_write   :: String -- Implicit write set				
        , imp_undef   :: String -- Implicit undef set				
        , useful      :: String -- Is this a useful system instruction?
        , protected   :: String -- Is this a protected system instruction?			
        , mode64      :: String -- Is this instruction valid in 64-bit mode?
        , mode32      :: String	-- Is this instruction valid in 32-bit mode?
        , flag        :: String -- CPUID flag
        , att         :: String -- att mnemonic (per gcc)
        , pref        :: String -- Prefer this over equally valid alternative
        , description :: String -- Intel manual description
        } deriving (Show)

--------------------------------------------------------------------------------
-- Common Helper Methods
--------------------------------------------------------------------------------

-- String transforms
--------------------------------------------------------------------------------

-- Remove leading/trailing whitespace
trim :: String -> String
trim = f . f
    where f = reverse . dropWhile isSpace

-- To lower case
low :: String -> String
low s = map toLower s

-- To upper case
up :: String -> String
up s = map toUpper s

-- Replaces whitespace by underscore
kill_ws :: Char -> Char
kill_ws c
  | isSpace c = '_'
  | otherwise = c

-- Replace whitespace by underscore
to_id :: String -> String
to_id s = map kill_ws s

-- Instruction modification
--------------------------------------------------------------------------------

-- Replace all occurrences of an operand
repl_op :: Instr -> String -> String -> Instr
repl_op i op val = i{instruction=inst'}
  where inst = instruction i
        inst' = subRegex (mkRegex op) inst (val)

-- Replace first occurrence of an operand
repl_first_op :: Instr -> String -> String -> Instr
repl_first_op i op val = i{instruction=inst'}
  where inst' = (raw_mnemonic i) ++ " " ++ (intercalate ", " ops)
        os = operands i
        ops = case findIndex (==op) os of
                   (Just idx) -> (take idx os) ++ [val] ++ (drop (idx+1) os)
                   Nothing -> os

-- Table formatting
--------------------------------------------------------------------------------

-- Transforms a list of instructions into a comma separated table
to_table :: [Instr] -> (Instr -> String) -> String
to_table is f = intercalate "\n" $ map elem is
  where elem i = ", " ++ (f i) ++ " // " ++ instruction i

-- Opcode related
--------------------------------------------------------------------------------

-- Extract opcode terms
opcode_terms :: Instr -> [String]
opcode_terms i = splitOn " " (opcode i)

-- Is this a prefix (ie: a byte that must appear before the REX prefix byte)?
is_prefix :: String -> Bool
is_prefix "PREF.66+" = True
is_prefix "66"       = True -- Not the same as PREF.66+; different semantics
is_prefix "REX.W+"   = True
is_prefix "REX.R+"   = True
is_prefix "REX+"     = True
is_prefix "F2"       = True -- Not the same as REP; different semantics
is_prefix "F3"       = True -- Not the same as REP; different semantics
is_prefix "9B"       = True -- The FWAIT prefix
is_prefix ('V':_)    = True -- VEX Prefixes all start with a V
is_prefix _ = False

-- Is this a suffix?
is_suffix :: String -> Bool
is_suffix ('+':_) = True
is_suffix ('/':_) = True
is_suffix ('i':_) = True
is_suffix ('c':_) = True
is_suffix _ = False

-- Is this a mod r/m digit?
is_digit :: String -> Bool
is_digit ('/':d:_) = isDigit d
is_digit _ = False

-- Extracts VEX terms
vex_terms :: Instr -> [String]
vex_terms i = splitOn "." $ head $ opcode_terms i

-- Extracts prefix bytes
opcode_prefix :: Instr -> [String]
opcode_prefix i = takeWhile is_prefix $ opcode_terms i

-- Extracts opcode bytes 
opcode_bytes :: Instr -> [String]
opcode_bytes i = takeWhile not_suffix $ dropWhile is_prefix $ ts 
  where not_suffix t = not $ is_suffix t
        ts = opcode_terms i

-- Extracts suffix bytes
opcode_suffix :: Instr -> [String]
opcode_suffix i = dropWhile not_suffix $ dropWhile is_prefix $ ts
  where not_suffix t = not $ is_suffix t
        ts = opcode_terms i

-- Instruction related
--------------------------------------------------------------------------------

-- Extract raw mnemonic
raw_mnemonic :: Instr -> String
raw_mnemonic i = head $ words $ instruction i

-- Returns true for conditional jump instructions
is_cond_jump :: Instr -> Bool
is_cond_jump i = let mn = raw_mnemonic i in
  head mn == 'J' && mn /= "JMP"

-- Returns true for unconditional jump instructions
is_uncond_jump :: Instr -> Bool
is_uncond_jump i = raw_mnemonic i == "JMP"

-- Extract arity
arity :: Instr -> Int
arity i = length $ operands i

-- Extract operands 
operands :: Instr -> [String]
operands i = let x = (splitOn ",") $ concat $ tail $ words (instruction i) in
	filter (\o -> o /= "") x

-- Returns true for register operands
reg_op :: String -> Bool
reg_op "rl"  = True
reg_op "rh"  = True
reg_op "rb"  = True
reg_op "r16" = True
reg_op "r32" = True
reg_op "r64" = True
reg_op "AL"  = True
reg_op "CL"  = True
reg_op "AX"  = True
reg_op "DX"  = True
reg_op "EAX" = True
reg_op "RAX" = True
reg_op _ = False

-- Returns true for 32-bit register operands
reg32_op :: String -> Bool
reg32_op "r32" = True
reg32_op "EAX" = True
reg32_op _ = False

-- Returns true for memory operands
mem_op :: String -> Bool
mem_op "m8"       = True
mem_op "m16"      = True
mem_op "m32"      = True
mem_op "m64"      = True
mem_op "m128"     = True
mem_op "m256"     = True
mem_op "m16:16"   = True
mem_op "m16:32"   = True
mem_op "m16:64"   = True
mem_op "m16int"   = True
mem_op "m32int"   = True
mem_op "m64int"   = True
mem_op "m80bcd"   = True
mem_op "m32fp"    = True
mem_op "m64fp"    = True
mem_op "m80fp"    = True
mem_op "m2byte"   = True
mem_op "m28byte"  = True
mem_op "m108byte" = True
mem_op "m512byte" = True
mem_op _ = False

-- Returns true for immediate operands
imm_op :: String -> Bool
imm_op "imm8" = True
imm_op "imm16" = True
imm_op "imm32" = True
imm_op "imm64" = True
imm_op _ = False

-- Returns true for moffs operands
moffs_op :: String -> Bool
moffs_op "moffs8" = True
moffs_op "moffs16" = True
moffs_op "moffs32" = True
moffs_op "moffs64" = True
moffs_op _ = False

-- Returns true for rel operands
rel_op :: String -> Bool
rel_op "rel8" = True
rel_op "rel32" = True
rel_op _ = False

-- Returns true for label operands
label_op :: String -> Bool
label_op "label" = True
label_op _ = False

-- Returns true for sreg operands
sreg_op :: String -> Bool
sreg_op "Sreg" = True
sreg_op "FS"   = True
sreg_op "GS"   = True
sreg_op _      = False

-- Returns true for st operands
st_op :: String -> Bool
st_op "ST"    = True
st_op "ST(i)" = True
st_op _       = False

-- Returns true for xmm operands
xmm_op :: String -> Bool
xmm_op "xmm"    = True
xmm_op "<XMM0>" = True
xmm_op _        = False

-- Transform operand into c++ type
op2type :: String -> String
op2type "rl"       = "Rl"
op2type "rh"       = "Rh"
op2type "rb"       = "Rb"
op2type "r16"      = "R16"
op2type "r32"      = "R32"
op2type "r64"      = "R64"
op2type "AL"       = "Al"
op2type "CL"       = "Cl"
op2type "AX"       = "Ax"
op2type "DX"       = "Dx"
op2type "EAX"      = "Eax" 
op2type "RAX"      = "Rax"
op2type "m8"       = "M8"
op2type "m16"      = "M16"
op2type "m32"      = "M32"
op2type "m64"      = "M64"
op2type "m128"     = "M128"
op2type "m256"     = "M256"
op2type "m16:16"   = "FarPtr1616" 
op2type "m16:32"   = "FarPtr1632"
op2type "m16:64"   = "FarPtr1664"
op2type "m16int"   = "M16Int"
op2type "m32int"   = "M32Int"
op2type "m64int"   = "M64Int"
op2type "m80bcd"   = "M80Bcd" 
op2type "m32fp"    = "M32Fp"
op2type "m64fp"    = "M64Fp"
op2type "m80fp"    = "M80Fp"
op2type "m2byte"   = "M2Byte" 
op2type "m28byte"  = "M28Byte" 
op2type "m108byte" = "M108Byte" 
op2type "m512byte" = "M512Byte" 
op2type "imm8"     = "Imm8"
op2type "imm16"    = "Imm16"
op2type "imm32"    = "Imm32"
op2type "imm64"    = "Imm64"
op2type "0"        = "Zero"
op2type "1"        = "One"
op2type "3"        = "Three"
op2type "mm"       = "Mm"
op2type "xmm"      = "Xmm"
op2type "<XMM0>"   = "Xmm0"
op2type "ymm"      = "Ymm"
op2type "ST"       = "St0"
op2type "ST(i)"    = "St"
op2type "rel8"     = "Rel8"
op2type "rel32"    = "Rel32"
op2type "moffs8"   = "Moffs8"
op2type "moffs16"  = "Moffs16"
op2type "moffs32"  = "Moffs32"
op2type "moffs64"  = "Moffs64"
op2type "Sreg"     = "Sreg"
op2type "FS"       = "Fs"
op2type "GS"       = "Gs"
-- Below this point are operand types we have introduced
op2type "p66"      = "Pref66"
op2type "pw"       = "PrefRexW"
op2type "far"      = "Far"
op2type "label"    = "Label"
op2type "hint"     = "Hint"
op2type o = error $ "Unrecognized operand type: \"" ++ o ++ "\""

-- Transform operand into type tag
op2tag :: String -> String
op2tag "rl"       = "RL"
op2tag "rh"       = "RH"
op2tag "rb"       = "RB"
op2tag "r16"      = "R_16"
op2tag "r32"      = "R_32"
op2tag "r64"      = "R_64"
op2tag "AL"       = "AL"
op2tag "CL"       = "CL"
op2tag "AX"       = "AX"
op2tag "DX"       = "DX"
op2tag "EAX"      = "EAX" 
op2tag "RAX"      = "RAX"
op2tag "m8"       = "M_8"
op2tag "m16"      = "M_16"
op2tag "m32"      = "M_32"
op2tag "m64"      = "M_64"
op2tag "m128"     = "M_128"
op2tag "m256"     = "M_256"
op2tag "m16:16"   = "FAR_PTR_16_16" 
op2tag "m16:32"   = "FAR_PTR_16_32"
op2tag "m16:64"   = "FAR_PTR_16_64"
op2tag "m16int"   = "M_16_INT"
op2tag "m32int"   = "M_32_INT"
op2tag "m64int"   = "M_64_INT"
op2tag "m80bcd"   = "M_80_BCD" 
op2tag "m32fp"    = "M_32_FP"
op2tag "m64fp"    = "M_64_FP"
op2tag "m80fp"    = "M_80_FP"
op2tag "m2byte"   = "M_2_BYTE" 
op2tag "m28byte"  = "M_28_BYTE" 
op2tag "m108byte" = "M_108_BYTE" 
op2tag "m512byte" = "M_512_BYTE" 
op2tag "imm8"     = "IMM_8"
op2tag "imm16"    = "IMM_16"
op2tag "imm32"    = "IMM_32"
op2tag "imm64"    = "IMM_64"
op2tag "0"        = "ZERO"
op2tag "1"        = "ONE"
op2tag "3"        = "THREE"
op2tag "mm"       = "MM"
op2tag "xmm"      = "XMM"
op2tag "<XMM0>"   = "XMM_0"
op2tag "ymm"      = "YMM"
op2tag "ST"       = "ST_0"
op2tag "ST(i)"    = "ST"
op2tag "rel8"     = "REL_8"
op2tag "rel32"    = "REL_32"
op2tag "moffs8"   = "MOFFS_8"
op2tag "moffs16"  = "MOFFS_16"
op2tag "moffs32"  = "MOFFS_32"
op2tag "moffs64"  = "MOFFS_64"
op2tag "Sreg"     = "SREG"
op2tag "FS"       = "FS"
op2tag "GS"       = "GS"
-- Below this point are operand types we have introduced
op2tag "p66"      = "PREF_66"
op2tag "pw"       = "PREF_REX_W"
op2tag "far"      = "FAR"
op2tag "label"    = "LABEL"
op2tag "hint"     = "HINT"
op2tag o = error $ "Unrecognized operand type: \"" ++ o ++ "\""

-- Property related
--------------------------------------------------------------------------------

-- Extract properties
properties :: Instr -> [String]
properties i = let x = map trim $ (splitOn ",") $ property i in
  filter (/= "") x

-- Implicit Read/Write/Undef related
--------------------------------------------------------------------------------

-- Expand shorthands
expand_implicit :: String -> [String]
expand_implicit "ST(*)"  = ["ST(0)","ST(1)","ST(2)","ST(3)","ST(4)","ST(5)",
                            "ST(6)","ST(7)"]
expand_implicit "TAG(*)" = ["TAG(0)","TAG(1)","TAG(2)","TAG(3)","TAG(4)",
                            "TAG(5)","TAG(6)","TAG(7)"]
expand_implicit "MM*"    = ["MM0","MM1","MM2","MM3","MM4","MM5","MM6","MM7"]
expand_implicit "XMM*"   = ["XMM0","XMM1","XMM2","XMM3","XMM4","XMM5","XMM6",
                            "XMM7","XMM8","XMM9","XMM10","XMM11","XMM12",
                            "XMM13","XMM14","XMM15"]
expand_implicit "YMM*"   = ["YMM0","YMM1","YMM2","YMM3","YMM4","YMM5","YMM6",
                            "YMM7","YMM8","YMM9","YMM10","YMM11","YMM12",
                            "YMM13","YMM14","YMM15"]
expand_implicit "E.*"    = ["E.CF","E.PF","E.AF","E.ZF","E.SF","E.SF","E.TF",
                            "E.IF","E.DF","E.OF","E.IOPL","E.NT","E.RF","E.VM",
                            "E.AC","E.VIF","E.VIP","E.ID"]
expand_implicit "S.*"    = ["S.IE","S.DE","S.ZE","S.OE","S.UE","S.PE","S.SF",
                            "S.ES","S.C0","S.C1","S.C2","S.TOP","S.C3","S.B"]
expand_implicit "M.*"    = ["M.IE","M.DE","M.ZE","M.OE","M.UE","M.PE","M.DAZ",
                            "M.IM","M.DM","M.ZM","M.OM","M.UM","M.PM","M.RC",
                            "M.FZ"]
expand_implicit "C.*"    = ["C.IM","C.DM","C.ZM","C.OM","C.UM","C.PM","C.PM",
                            "C.PC","C.RC","C.X"]
expand_implicit s = [s]

-- Extract implicit reads
implicit_reads :: Instr -> [String]
implicit_reads i = filter (/= "") $ 
                   concat $ map expand_implicit $ (splitOn " ") $ imp_read i

-- Extract implicit writes
implicit_writes :: Instr -> [String]
implicit_writes i = filter (/= "") $ 
                    concat $ map expand_implicit $ (splitOn " ") $ imp_write i

-- Extract implicit undefs
implicit_undefs :: Instr -> [String]
implicit_undefs i = filter (/= "") $ 
                    concat $ map expand_implicit $ (splitOn " ") $ imp_undef i

-- Flag related
--------------------------------------------------------------------------------

-- Separate cpuid feature flags
flags :: Instr -> [String]
flags i = filter (\x -> x /= "" ) $ splitOn " " $ flag i

-- Is this instruction VEX encoded?
is_vex_encoded :: Instr -> Bool
is_vex_encoded i = any (\x -> head x == 'V') $ opcode_terms i


-- Common Assembler strings
--------------------------------------------------------------------------------

-- Assembler mnemonic
assm_mnemonic :: Instr -> String
assm_mnemonic i = let m = raw_mnemonic i in
  case m of
    "AND" -> "and_"
    "INT" -> "int_"
    "NOT" -> "not_"
    "OR"  -> "or_"
    "STD" -> "std_"
    "XOR" -> "xor_"
    _     -> (low m)

-- Assembler doxygen comment
assm_doxy :: Instr -> String
assm_doxy i = "/** " ++ (description i) ++ " */"

-- Assembler arg type
assm_arg_type :: String -> String
assm_arg_type a = "const " ++ (op2type a) ++ "&"

-- Assembler declaration arg list
assm_arg_list :: Instr -> String
assm_arg_list i = intercalate ", " $ map arg $ zip [0..] (operands i)
  where arg (i,a) = (assm_arg_type a) ++ " arg" ++ (show i)

-- Assembler declaration
assm_decl :: Instr -> String
assm_decl i = "void " ++
              (assm_mnemonic i) ++
              "(" ++
              (assm_arg_list i) ++
              ")"


--------------------------------------------------------------------------------
-- Data parsing
--------------------------------------------------------------------------------

-- Step 0: Read input file
--------------------------------------------------------------------------------

-- Read a row
read_instr :: String -> Instr
read_instr s = let (o:i:e:p:r:w:u:su:sp:m64:m32:f:a:pr:d:[]) = splitOn "\t" s in 
                   (Instr (trim o)  (trim i) 
                          (trim e)  (trim p)
                          (trim r)  (trim w)  (trim u)
                          (trim su) (trim sp) (trim m64) (trim m32) 
                          (trim f) 
                          (trim a)  (trim pr) (trim d))

-- Read all rows
read_instrs :: String -> [Instr]
read_instrs s = map read_instr $ lines s

-- Step 1: Remove formatting
--------------------------------------------------------------------------------

-- Remove license, title row, and empty rows		
remove_format :: [Instr] -> [Instr]
remove_format is = filter (\x -> keep x) (drop 16 is)
    where keep i = (opcode i) /= "" 

-- Step 2: Remove instructions which are invalid in 64-bit mode
--------------------------------------------------------------------------------

-- Filter out valid 64-bit application mode instructions
x64 :: [Instr] -> [Instr]
x64 is = filter keep is
  where keep i = mode64 i == "V" &&
                 useful i /= "NO" && useful i /= "NO*" &&
                 protected i /= "YES" && protected i /= "YES*" &&
								 -- TODO: Figure out what these operands mean
                 (not ("vm32x" `elem` (operands i))) &&
                 (not ("vm32y" `elem` (operands i))) &&
                 (not ("vm64x" `elem` (operands i))) &&
                 (not ("vm64y" `elem` (operands i))) 

-- Step 3: Split instructions with implicit or explicit disjunct operands
--------------------------------------------------------------------------------

-- Identifies a disjunct operand
disjunct_idx :: Instr -> Maybe Int
disjunct_idx i = findIndex disj $ operands i
  where disj o = ('/' `elem` o) || (o == "reg") || (o == "m") || (o == "mem")

-- Split a disjunct operand into its constituent parts
split_op :: String -> [String]
split_op "r/m8" = ["r8","m8"]
split_op "r/m16" = ["r16","m16"]
split_op "r/m32" = ["r32","m32"]
split_op "r/m64" = ["r64","m64"]
split_op "reg/m32" = ["r32","r64","m32"]
split_op "reg/m8" = ["r32","r64","m8"]
split_op "reg/m16" = ["r32","r64","m16"]
split_op "reg" = ["r32","r64"]
split_op "m" = ["m16","m32","m64"]
split_op "mem" = ["m16","m32","m64"]
split_op o
  | '/' `elem` o = splitOn "/" o
  | otherwise = error $ "Can't split non-disjunct operand " ++ o

-- Flatten instructions with disjunct operands
flatten_instr :: Instr -> [Instr]
flatten_instr i = case disjunct_idx i of
  Nothing    -> [i]
  (Just idx) -> map (repl_op i op) vals
    where op = (operands i) !! idx
          vals = split_op op

-- Flatten all instructions
-- Instructions can have up to two disjucnt operands (thus the double call)
flatten_instrs :: [Instr] -> [Instr]
flatten_instrs is = concat $ map flatten_instr $ 
                    concat $ map flatten_instr is

-- Step 4: Canonicalize operand symbols
--------------------------------------------------------------------------------

-- Canonical operand symbols
canonical_op :: String -> String
canonical_op "mm1"   = "mm"
canonical_op "mm2"   = "mm"
canonical_op "r32a"  = "r32"
canonical_op "r32b"  = "r32"
canonical_op "r64a"  = "r64"
canonical_op "r64b"  = "r64"
canonical_op "xmm0"  = "xmm"
canonical_op "xmm1"  = "xmm"
canonical_op "xmm2"  = "xmm"
canonical_op "xmm3"  = "xmm"
canonical_op "xmm4"  = "xmm" 
canonical_op "ymm0"  = "ymm"
canonical_op "ymm1"  = "ymm"
canonical_op "ymm2"  = "ymm"
canonical_op "ymm3"  = "ymm"
canonical_op "ymm4"  = "ymm" 
canonical_op "ST(0)" = "ST"
canonical_op "ST(i)" = "ST(i)"
canonical_op o = o

-- Canonicalize operands where synonyms were used
fix_op :: Instr -> Instr
fix_op i = i{instruction=inst}
  where inst = (raw_mnemonic i) ++ " " ++ (intercalate ", " (ops i))
        ops i = map canonical_op $ operands i	

-- Canonicalize operands for all instructions
fix_ops :: [Instr] -> [Instr]
fix_ops is = map fix_op is

-- Step 5: Fix up REX rows
--------------------------------------------------------------------------------

-- Replace an r8 in a rex row by rl and rb
fix_rex_r8 :: Instr -> [Instr]
fix_rex_r8 i = case "REX+" `elem` (opcode_terms i) of
  True  -> [(repl_first_op i "r8" "rl"), (repl_first_op i "r8" "rb")]
  False -> []

-- Replace an r8 in a non-rex row by rl and rh
fix_norex_r8 :: Instr -> [Instr]
fix_norex_r8 i = case "REX+" `notElem` (opcode_terms i) of
  True  -> [(repl_first_op i "r8" "rl"), (repl_first_op i "r8" "rh")]
  False -> []

-- Replace an r8 in a rex row if necessary
fix_rex_row :: Instr -> [Instr]
fix_rex_row i = case "r8" `elem` (operands i) of 
	True -> concat [(fix_norex_r8 i), (fix_rex_r8 i)]
	False -> [i]

-- Is this one of three instructions that require REX+ no matter what
needs_rex :: Instr -> Bool
needs_rex i = mn == "LSS" || mn == "LFS" || mn == "LGS"
  where mn = raw_mnemonic i

-- Remove REX+ rows which correspond to the mem half of r/m8 splits
remove_m8_rex :: [Instr] -> [Instr]
remove_m8_rex is = filter keep is
  where keep i = "REX+" `notElem` (opcode_terms i) || "rb" `elem` (operands i) || needs_rex i

-- Fix all rex rows (we do this twice to handle instructions with 2 r8 operands)
fix_rex_rows :: [Instr] -> [Instr]
fix_rex_rows is = remove_m8_rex $ concat $ map fix_rex_row $ concat $ map fix_rex_row is

-- Step 6: Remove duplicate rows by using the preferred encoding
--------------------------------------------------------------------------------

-- Returns a preferred instruction from a list of alternatives
get_pref :: [Instr] -> Instr
get_pref [] = error "Can't select preference from empty list!"
get_pref (i:[]) = i
get_pref is = case find (\x -> pref x == "YES") is of
                   (Just i) -> i
                   _ -> error $ "Ambiguity for " ++ 
                                (opcode_enum (head is)) ++ ": " ++ 
                                (intercalate " " (map opcode is))

-- Remove ambiguity by prefering the shortest encoding
remove_ambiguity :: [Instr] -> [Instr]
remove_ambiguity is = map get_pref $ groupBy eq $ nubBy eq $ sortBy srt is
  where srt x y = compare (assm_decl x) (assm_decl y)
        eq x y = (assm_decl x) == (assm_decl y)	

-- Step 7: Insert prefixes and operands
--------------------------------------------------------------------------------

-- Is this an instruction which does NOT require a 66 prefix despite operands?
no_pref66 :: Instr -> Bool
no_pref66 i = (is_vex_encoded i) || 
              (op == "ENTER") ||
              (op == "FSTSW") || (op == "FNSTSW") ||
              (op == "LDDQU") ||
              (en == "LEA_R32_M16") || (en == "LEA_R32_M32") || 
              (en == "LEA_R32_M64") || (en == "LEA_R64_M16") ||
              (en == "LEA_R64_M32") || (en == "LEA_R64_M64") ||
              (en == "MOV_SREG_R16") ||
              (en == "MOVSX_R32_R16") || (en == "MOVSX_R64_R16") ||
              (en == "MOVZX_R32_R16") || (en == "MOVZX_R64_R16") ||
              (op == "PINSRW") ||
              (op == "RET") ||
              (op == "VERR") || (op == "VERW")
  where op = raw_mnemonic i
        en = opcode_enum i

-- Inserts PREF.66+ for instructions with 16-bit operands
-- This ignores DX which only appears as an implicit operand to string instrs
-- VEX instructions are not modifed (the override is encoded differently)
insert_pref66 :: Instr -> Instr
insert_pref66 i = case (not (no_pref66 i)) && (r16 || m16 || ax || imm16) of
  True  -> i{opcode=("PREF.66+ " ++ (opcode i))}
  False -> i
  where r16   = "r16"   `elem` (operands i)
        m16   = "m16"   `elem` (operands i) 
        ax    = "AX"    `elem` (operands i)
        imm16 = "imm16" `elem` (operands i)

-- Inserts a label variant for instructions that take rel operands
insert_label_variant :: Instr -> [Instr]
insert_label_variant i
  | "rel32" `elem` (operands i) =
    [i
    ,i{instruction=(subRegex (mkRegex "rel32") (instruction i) "label")}]
	| otherwise = [i]

-- Inserts a hint variant for conditional jumps
insert_hint_variant :: Instr -> [Instr]
insert_hint_variant i = case is_cond_jump i of
  True -> [i,i{instruction=(instruction i ++ ", hint"),
               property=(property i ++ ", I")}]
  False -> [i]

-- Inserts everything that's missing
insert_missing :: [Instr] -> [Instr]
insert_missing is = concat $ map insert_label_variant $
                    concat $ map insert_hint_variant $
                    map insert_pref66 is

-- Parse input file
--------------------------------------------------------------------------------

parse_instrs :: String -> IO [Instr]
parse_instrs file = do f <- readFile file
                       return $ all f
  where all = insert_missing .
              remove_ambiguity . 
              fix_rex_rows . 
              fix_ops . 
              flatten_instrs . 
              x64 . 
              remove_format . 
              read_instrs

--------------------------------------------------------------------------------
-- Codegen
-------------------------------------------------------------------------------

-- Opcode
--------------------------------------------------------------------------------

-- Converts an instruction into an Opcode enum value
opcode_enum :: Instr -> String
opcode_enum i = intercalate "_" $ (mnem i) : (ops i)
  where mnem i = raw_mnemonic i
        ops i = map (up . op2type) (operands i)

-- Converts all instructions to Opcode enum values
opcode_enums :: [Instr] -> String
opcode_enums is = to_table is opcode_enum


--------------------------------------------------------------------------------
-- Documentation
--------------------------------------------------------------------------------



to_enum :: Instr -> String
to_enum i = opcode_enum i


cond_read :: Instr -> [String]
cond_read i = filter  (/= "") (cond_read_helper $ (filter (isPrefixOf "e." )(implicit_reads i) ++ filter (isPrefixOf "E." )(implicit_reads i))) 
  where
    cond_read_helper (x:xs) = let y = (head (tail (splitOn "." x))) in 
                              (if(y=="af" || y=="cf" || y=="of" || y=="pf" || y=="sf" || y=="zf") 
                               then y 
                               else "") : (cond_read_helper xs)
    cond_read_helper [] = []

    
operand_types :: Instr ->  [String]
operand_types i = map operand_types_helper (operands i)
  where
    operand_types_helper "rl" = "R"
    operand_types_helper "rh" = "R"
    operand_types_helper "rb" = "R"
    operand_types_helper "r16" = "R"
    operand_types_helper "r32" = "R"
    operand_types_helper "r64" = "R"
    operand_types_helper "1" = "I"
    operand_types_helper "imm8" = "I"
    operand_types_helper "imm16" = "I"
    operand_types_helper "imm32" = "I"
    operand_types_helper "imm64" = "I"
    operand_types_helper "m8" = "M"
    operand_types_helper "m16" = "M"
    operand_types_helper "m32" = "M"
    operand_types_helper "m64" = "M"
    operand_types_helper "m128" = "M"
    operand_types_helper "m256" = "M"
    operand_types_helper "xmm"    = "S"
    operand_types_helper "<XMM0>" = "S0"
    operand_types_helper x = x

    
operand_widths :: Instr ->  [String]
operand_widths i = map operand_widths_helper (operands i)
  where
    operand_widths_helper "rl" = "8"
    operand_widths_helper "rh" = "8"
    operand_widths_helper "rb" = "8"
    operand_widths_helper "r16" = "16"
    operand_widths_helper "r32" = "32"
    operand_widths_helper "r64" = "64"
    operand_widths_helper "imm8" = "8"
    operand_widths_helper "imm16" = "16"
    operand_widths_helper "imm32" = "32"
    operand_widths_helper "imm64" = "64"
    operand_widths_helper "m8" = "8"
    operand_widths_helper "m16" = "16"
    operand_widths_helper "m32" = "32"
    operand_widths_helper "m64" = "64"
    operand_widths_helper "m128" = "128"
    operand_widths_helper "m256" = "256"
    operand_widths_helper "AL"  = "8"
    operand_widths_helper "CL"  = "8"
    operand_widths_helper "AX"  = "16"
    operand_widths_helper "DX"  = "16"
    operand_widths_helper "EAX" = "32"
    operand_widths_helper "RAX" = "64"
    operand_widths_helper "xmm" = "128"
    operand_widths_helper "<XMM0>" = "128"   
    operand_widths_helper "1" = "8"   
    operand_widths_helper x = "0"
    
    
-- Generates a unique name for an instruction
assm_fxn :: Instr -> String
assm_fxn i = map toLower $ to_enum i


myoperands :: Instr -> [(String,String,String)]
myoperands i = zip3 (operand_widths i) (operand_types i) (myproperties i)
    
myproperties :: Instr -> [String]
myproperties i = (map myproperty (properties i))
  where
    myproperty "RW" = "X"
    myproperty "Rw" = "X"
    myproperty "UW" = "W"
    myproperty "uw" = "W"
    myproperty "w" = "X"
    myproperty "Rwu" = "X"
    myproperty "R" = "R"
    myproperty "W" = "W"
    myproperty "rw" = "X"
    myproperty "r" = "R"
    myproperty "Z" = "W"    
    myproperty "RZ" = "X"    
    myproperty "I"="I"
    
-- Generates an argument list for an instruction
assm_args :: Instr -> String
assm_args i = concat $ intersperse "," $ (("bool dest_is_reg"):(args' (myoperands i) 0))++(condargs (sort (cond_read i)) 0) 
  where   valid_type_list = ["M", "R","AL",  "AX", "EAX", "RAX", "CL", "DX", "S", "S0"]
	  args' ((_,"I",_):xs) i =   (("Expr E"++(show i))++",unsigned int imm"):[] ++ (args' xs (i+1)) 
	  args' ((_,x,"R"):xs) i =  if (x `elem` valid_type_list) then ("Expr E" ++ (show i)):[] ++ (args' xs (i+1)) else (args' xs i)
	  args' ((_,x,"W"):xs) i =  if (x `elem` valid_type_list) then ("Expr E" ++ (show i)):[] ++ (args' xs (i+1)) else (args' xs i)
	  args' ((_,x,"X"):xs) i =  if (x `elem` valid_type_list) then ("Expr E" ++ (show i)++",Expr E" ++ (show (i+1))):[] ++ (args' xs (i+2)) else (args' xs i)
	  args' _ _ = []
	  condargs ("af":xs) i =  ("Expr EAOld"   ++ (show i)):[] ++ (condargs xs (i+1))          
	  condargs ("cf":xs) i =  ("Expr ECOld"   ++ (show i)):[] ++ (condargs xs (i+1))
	  condargs ("of":xs) i =  ("Expr EOOld"   ++ (show i)):[] ++ (condargs xs (i+1))
	  condargs ("pf":xs) i =  ("Expr EPOld"   ++ (show i)):[] ++ (condargs xs (i+1))
	  condargs ("sf":xs) i =  ("Expr ESOld"   ++ (show i)):[] ++ (condargs xs (i+1))
	  condargs ("zf":xs) i =  ("Expr EZOld"   ++ (show i)):[] ++ (condargs xs (i+1))                    
	  condargs [] _ = []
	  
lookup_handler :: String -> Int -> Instr -> Maybe String
lookup_handler "adcb"     _ _ = Just "adcHandler(d, bitWidth, E1, E0, E2,dest_is_reg);"
lookup_handler "adcl"     _ _ = Just "adcHandler(d, bitWidth, E1, E0, E2,dest_is_reg);"
lookup_handler "adcq"     _ _ = Just "adcHandler(d, bitWidth, E1, E0, E2,dest_is_reg);"
lookup_handler "adcw"     _ _ = Just "adcHandler(d, bitWidth, E1, E0, E2,dest_is_reg);"
lookup_handler "addb"     _ _ = Just "addHandler(d, bitWidth, E1, E0, E2,dest_is_reg);"
lookup_handler "addl"     _ _ = Just "addHandler(d, bitWidth, E1, E0, E2,dest_is_reg);"
lookup_handler "addpd"    _ _ = Just "adddHandler(d, 2, E1, E0, E2, dest_is_reg);"
lookup_handler "addps"    _ _ = Just "addfHandler(d, 4, E1, E0, E2, dest_is_reg);"
lookup_handler "addq"     _ _ = Just "addHandler(d, bitWidth, E1, E0, E2,dest_is_reg);"
lookup_handler "addsd"    _ _ = Just "adddHandler(d, 1, E1, E0, E2, dest_is_reg);"
lookup_handler "addss"    _ _ = Just "addfHandler(d, 1, E1, E0, E2, dest_is_reg);"
lookup_handler "addw"     _ _ = Just "addHandler(d, bitWidth, E1, E0, E2,dest_is_reg);"
lookup_handler "andb"     _ _ = Just "andHandler(d, bitWidth, E1, E0, E2,dest_is_reg);"
lookup_handler "andl"     _ _ = Just "andHandler(d, bitWidth, E1, E0, E2,dest_is_reg);"
lookup_handler "andps"    _ _ = Just "andpsHandler(d, E1, E0, E2);"
lookup_handler "andpd"    _ _ = Just "andpsHandler(d, E1, E0, E2);"
lookup_handler "andq"     _ _ = Just "andHandler(d, bitWidth, E1, E0, E2,dest_is_reg);"
lookup_handler "andw"     _ _ = Just "andHandler(d, bitWidth, E1, E0, E2,dest_is_reg);"
lookup_handler "bsfl"     _ _ = Just "bsfHandler(d, bitWidth, E0, E1);"
lookup_handler "bsfq"     _ _ = Just "bsfHandler(d, bitWidth, E0, E1);"
lookup_handler "bsfw"     _ _ = Just "bsfHandler(d, bitWidth, E0, E1);"
lookup_handler "bsrl"     _ _ = Just "bsrHandler(d, bitWidth, E0, E1);"
lookup_handler "bsrq"     _ _ = Just "bsrHandler(d, bitWidth, E0, E1);"
lookup_handler "bsrw"     _ _ = Just "bsrHandler(d, bitWidth, E0, E1);"
lookup_handler "bswap"    _ _ = Just "bswapHandler(d, bitWidth, E1, E0);"
lookup_handler "btcl"     _ _ = Just "btcHandler(d, bitWidth, E1, E0, E2,dest_is_reg);"
lookup_handler "btcq"     _ _ = Just "btcHandler(d, bitWidth, E1, E0, E2,dest_is_reg);"
lookup_handler "btcw"     _ _ = Just "btcHandler(d, bitWidth, E1, E0, E2,dest_is_reg);"
lookup_handler "btl"      _ _ = Just "btHandler(d, bitWidth, E0, E1);"
lookup_handler "btq"      _ _ = Just "btHandler(d, bitWidth, E0, E1);"
lookup_handler "btrl"     _ _ = Just "btvalHandler(d, bitWidth, E1, E0, E2, false, dest_is_reg);"
lookup_handler "btrq"     _ _ = Just "btvalHandler(d, bitWidth, E1, E0, E2, false, dest_is_reg);"
lookup_handler "btrw"     _ _ = Just "btvalHandler(d, bitWidth, E1, E0, E2, false, dest_is_reg);"
lookup_handler "btsl"     _ _ = Just "btvalHandler(d, bitWidth, E1, E0, E2, true, dest_is_reg);"
lookup_handler "btsq"     _ _ = Just "btvalHandler(d, bitWidth, E1, E0, E2, true, dest_is_reg);"
lookup_handler "btsw"     _ _ = Just "btvalHandler(d, bitWidth, E1, E0, E2, true, dest_is_reg);"
lookup_handler "btw"      _ _ = Just "btHandler(d, bitWidth, E0, E1);"
lookup_handler "cbtw"     _ _ = Just "convert_e_Handler(d, 8);"
lookup_handler "clc"      _ _ = Just "setFlag(d.Vnprime,V_CF, SymBool::_false(), d.constraints, d.post_suffix);"
lookup_handler "cltd"     _ _ = Just "cwd_cdq_cqoHandler(d, 32);"
lookup_handler "cltq"     _ _ = Just "convert_e_Handler(d, 32);"
lookup_handler "cmc"      _ _ = Just "setFlag(d.Vnprime,V_CF, !(getBoolExpr(V_CF,d.pre_suffix, d.Vn)), d.constraints, d.post_suffix);"

-- handles all the cmovs
lookup_handler ('c':'m':'o':'v':xs) _ _ = Just $ "cmovccHandler(d, bitWidth, \"" ++ cc ++ "\", E1, E0, E2, dest_is_reg);"
                                                  where cc = take (length xs - 1) xs
lookup_handler "cmpb"     _ _ = Just "cmpHandler(d, bitWidth, E0, E1);"
lookup_handler "cmpl"     _ _ = Just "cmpHandler(d, bitWidth, E0, E1);"
lookup_handler "cmpps"    _ _ = Just "cmppsHandler(d,imm, E1, E0, E2, E3);"
lookup_handler "cmpq"     _ _ = Just "cmpHandler(d, bitWidth, E0, E1);"
lookup_handler "cmpw"     _ _ = Just "cmpHandler(d, bitWidth, E0, E1);"
lookup_handler "cqto"     _ _ = Just "cwd_cdq_cqoHandler(d, 64);"
lookup_handler "cwtd"     _ _ = Just "cwd_cdq_cqoHandler(d, 16);"
lookup_handler "cwtl"     _ _ = Just "convert_e_Handler(d, 16);"
lookup_handler "decb"     _ _ = Just "decHandler(d, bitWidth, E1, E0, dest_is_reg);"
lookup_handler "decl"     _ _ = Just "decHandler(d, bitWidth, E1, E0, dest_is_reg);"
lookup_handler "decq"     _ _ = Just "decHandler(d, bitWidth, E1, E0, dest_is_reg);"
lookup_handler "decw"     _ _ = Just "decHandler(d, bitWidth, E1, E0, dest_is_reg);"
lookup_handler "divb"     _ _ = Just "divHandler(d, bitWidth, E0);"
lookup_handler "divl"     _ _ = Just "divHandler(d, bitWidth, E0);"
lookup_handler "divq"     _ _ = Just "divHandler(d, bitWidth, E0);"
lookup_handler "divw"     _ _ = Just "divHandler(d, bitWidth, E0);"
lookup_handler "dppd"     _ _ = Just "dppdHandler(d,imm, E1, E0, E2, E3);"
lookup_handler "haddpd"   _ _ = Just "haddpdHandler(d, E1, E0, E2, dest_is_reg);"
lookup_handler "haddps"   _ _ = Just "haddpsHandler(d, E1, E0, E2, dest_is_reg);"
lookup_handler "idivb"    _ _ = Just "idivHandler(d, bitWidth, E0);"
lookup_handler "idivl"    _ _ = Just "idivHandler(d, bitWidth, E0);"
lookup_handler "idivq"    _ _ = Just "idivHandler(d, bitWidth, E0);"
lookup_handler "idivw"    _ _ = Just "idivHandler(d, bitWidth, E0);"
lookup_handler "incb"     _ _ = Just "incHandler(d, bitWidth, E1, E0, dest_is_reg);"
lookup_handler "incl"     _ _ = Just "incHandler(d, bitWidth, E1, E0, dest_is_reg);"
lookup_handler "incq"     _ _ = Just "incHandler(d, bitWidth, E1, E0, dest_is_reg);"
lookup_handler "incw"     _ _ = Just "incHandler(d, bitWidth, E1, E0, dest_is_reg);"
lookup_handler "lahf"     _ _ = Just "lahfHandler(d);"
lookup_handler "lddqu"    _ _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, true, dest_is_reg);"
lookup_handler "leal"     _ _ = Just "leaHandler(d, 32);"
lookup_handler "leaq"     _ _ = Just "leaHandler(d, 64);"
lookup_handler "leaw"     _ _ = Just "leaHandler(d, 16);"
lookup_handler "maxps"    _ _ = Just "maxpsHandler(d, E1, E0, E2);"
lookup_handler "movapd"   _ _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, true, dest_is_reg);"
lookup_handler "movaps"   _ _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, true, dest_is_reg);"
lookup_handler "movb"     2 _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, true, dest_is_reg);"
lookup_handler "movd"     _ _ = Just "movHandler(d, 32, bitWidth1, E0, E1, true, dest_is_reg);"
lookup_handler "movdqa"   _ _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, true, dest_is_reg);"
lookup_handler "movdqu"   _ _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, true, dest_is_reg);"
-- removed as per #241 lookup_handler "movhlps"  _ _ = Just "movhlpsHandler(d, E0, E1, dest_is_reg);"
lookup_handler "movhps"   _ _ = Just "movhHandler(d, E0, E1, dest_is_reg);"
lookup_handler "movl"     2 _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, true, dest_is_reg);"
lookup_handler "movlps"   _ _ = Just "movHandler(d, 64, bitWidth1, E0, E1, true, dest_is_reg);"
lookup_handler "movq"     2 _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, true, dest_is_reg);" 
lookup_handler "movsbl"   _ _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, true, dest_is_reg);"
lookup_handler "movsbq"   _ _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, true, dest_is_reg);"
lookup_handler "movsbw"   _ _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, true, dest_is_reg);"
lookup_handler "movslq"   _ _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, true, dest_is_reg);"
lookup_handler "movswl"   _ _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, true, dest_is_reg);"
lookup_handler "movswq"   _ _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, true, dest_is_reg);"
lookup_handler "movupd"   _ _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, true, dest_is_reg);"
lookup_handler "movups"   _ _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, true, dest_is_reg);"
lookup_handler "movw"     2 _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, true, dest_is_reg);"
lookup_handler "movzbl"   _ _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, false, dest_is_reg);"
lookup_handler "movzbq"   _ _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, false, dest_is_reg);"
lookup_handler "movzbw"   _ _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, false, dest_is_reg);"
lookup_handler "movzwl"   _ _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, false, dest_is_reg);"
lookup_handler "movzwq"   _ _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, false, dest_is_reg);"
lookup_handler "mulb"     _ _ = Just "umul1Handler(d, bitWidth, E0);"
lookup_handler "mull"     _ _ = Just "umul1Handler(d, bitWidth, E0);"
lookup_handler "mulpd"    _ _ = Just "muldHandler(d, 2, E1, E0, E2, dest_is_reg);"
lookup_handler "mulps"    _ _ = Just "mulfHandler(d, 4, E1, E0, E2, dest_is_reg);"
lookup_handler "mulq"     _ _ = Just "umul1Handler(d, bitWidth, E0);"
lookup_handler "mulsd"    _ _ = Just "muldHandler(d, 1, E1, E0, E2, dest_is_reg);"
lookup_handler "mulss"    _ _ = Just "mulfHandler(d, 1, E1, E0, E2, dest_is_reg);"
lookup_handler "mulw"     _ _ = Just "umul1Handler(d, bitWidth, E0);"
lookup_handler "negb"     _ _ = Just "negHandler(d, bitWidth, E1, E0, dest_is_reg);"
lookup_handler "negl"     _ _ = Just "negHandler(d, bitWidth, E1, E0, dest_is_reg);"
lookup_handler "negq"     _ _ = Just "negHandler(d, bitWidth, E1, E0, dest_is_reg);"
lookup_handler "negw"     _ _ = Just "negHandler(d, bitWidth, E1, E0, dest_is_reg);"
lookup_handler "nop"      _ _ = Just ""
lookup_handler "notb"     _ _ = Just "notHandler(d, bitWidth, E1, E0, dest_is_reg);"
lookup_handler "notl"     _ _ = Just "notHandler(d, bitWidth, E1, E0, dest_is_reg);"
lookup_handler "notq"     _ _ = Just "notHandler(d, bitWidth, E1, E0, dest_is_reg);"
lookup_handler "notw"     _ _ = Just "notHandler(d, bitWidth, E1, E0, dest_is_reg);"
lookup_handler "orb"      _ _ = Just "orHandler(d, bitWidth, E1, E0, E2,dest_is_reg);"
lookup_handler "orl"      _ _ = Just "orHandler(d, bitWidth, E1, E0, E2,dest_is_reg);"
lookup_handler "orq"      _ _ = Just "orHandler(d, bitWidth, E1, E0, E2,dest_is_reg);"
lookup_handler "orw"      _ _ = Just "orHandler(d, bitWidth, E1, E0, E2,dest_is_reg);"
lookup_handler "packusdw" _ _ = Just "packusdwHandler(d,32,16,E1, E0, E2);"
lookup_handler "paddd"    _ _ = Just "paddHandler(d, 32, bitWidth, E1, E0, E2, dest_is_reg);"
lookup_handler "palignr"  3 _ = Just "palignrHandler(d, 3, bitWidth, imm, E1, E0, E2);"
lookup_handler "pandn"    _ _ = Just "pandnHandler(d, E1, E0, E2);"
lookup_handler "pmaxsd"    _ _ = Just "pmaxsdHandler(d, E1, E0, E2);"
lookup_handler "pminuw"    _ _ = Just "pminuwHandler(d, E1, E0, E2);"
lookup_handler "pmovsxdq" _ _ = Just "pmovsxdqHandler(d, E0, E1);"
lookup_handler "pmovsxwq" _ _ = Just "pmovsxwqHandler(d, E0, E1);"
lookup_handler "pmovzxbd" _ _ = Just "pmovzxbdHandler(d, E0, E1);"
lookup_handler "pmovzxbw" _ _ = Just "pmovzxbwHandler(d, E0, E1);"
lookup_handler "pmovzxwd" _ _ = Just "pmovzxwdHandler(d, E0, E1);"
lookup_handler "pmovzxwq" _ _ = Just "pmovzxwqHandler(d, E0, E1);"
lookup_handler "popcntl"  _ i = Just "popcnt32Handler(d, E0, E1);"
lookup_handler "popcntq"  _ i = Just "popcnt64Handler(d, E0, E1);"
lookup_handler "popcntw"  _ i = Just "popcnt16Handler(d, E0, E1);"
lookup_handler "pshufd"   _ _ = Just "pshufdHandler(d, imm, E0, E1, E2);"
lookup_handler "pshufhw"  _ _ = Just "pshufhwHandler(d, 128, false, imm, E0, E1);"
lookup_handler "pshuflw"  _ _ = Just "pshuflwHandler(d, 128, false, imm, E0, E1);"
{- removed as per #174
lookup_handler "psllw"  _ i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "psllHandler(d, 16, imm, E1, E0);"  
                                       else ""
lookup_handler "pslld"  _ i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "psllHandler(d, 32, imm, E1, E0);"  
                                       else ""
lookup_handler "psllq"  _ i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "psllHandler(d, 64, imm, E1, E0);"  
                                       else ""
-}
lookup_handler "punpckldq" _ _ = Just "punpckldqHandler(d, E1, E0, E2);"
lookup_handler "punpcklwd" _ _ = Just "punpcklwdHandler(d, E1, E0, E2);"
lookup_handler "pxor"     _ _ = Just "pxorHandler(d, E1, E0, E2);"
lookup_handler "retq"     _ _ = Just ""
lookup_handler "rolb"     2 i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "rolHandler(d, bitWidth, (imm & 0x1f)%8,   E1, E0, dest_is_reg);" 
                                       else ""
lookup_handler "rorb"     2 i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "rorHandler(d, bitWidth, (imm & 0x1f)%8,   E1, E0, dest_is_reg);" 
                                       else ""

lookup_handler "roll"     2 i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "rolHandler(d, bitWidth, imm & 0x1f,   E1, E0, dest_is_reg);" 
                                       else ""
lookup_handler "rorl"     2 i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "rorHandler(d, bitWidth, imm & 0x1f,   E1, E0, dest_is_reg);" 
                                       else ""
lookup_handler "sahf"     _ _ = Just "sahfHandler(d);"
lookup_handler "salb"     1 _ = Just "shlHandler(d, bitWidth, 1, E1, E0,dest_is_reg);"
lookup_handler "salb"     2 i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "shlHandler(d, bitWidth, imm, E1, E0, dest_is_reg);" 
                                       else ""
lookup_handler "sall"     1 _ = Just "shlHandler(d, bitWidth, 1, E1, E0,dest_is_reg);" 
lookup_handler "sall"     2 i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "shlHandler(d, bitWidth, imm&0x1f, E1, E0, dest_is_reg);" 
                                       else "shlVarHandler(d, bitWidth, E1, E0, dest_is_reg);"
lookup_handler "salq"     1 _ = Just "shlHandler(d, bitWidth, 1, E1, E0,dest_is_reg);"
lookup_handler "salq"     2 i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "shlHandler(d, bitWidth, imm&0x3f, E1, E0, dest_is_reg);" 
                                       else ""
lookup_handler "salw"     1 _ = Just "shlHandler(d, bitWidth, 1, E1, E0,dest_is_reg);"
lookup_handler "salw"     2 i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "shlHandler(d, bitWidth, imm, E1, E0, dest_is_reg);" 
                                       else ""
lookup_handler "sarb"     1 _ = Just "sarHandler(d, bitWidth, 1, E1, E0,dest_is_reg);"
lookup_handler "sarb"     2 i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "sarHandler(d, bitWidth, imm, E1, E0, dest_is_reg);" 
                                       else ""
lookup_handler "sarl"     1 _ = Just "sarHandler(d, bitWidth, 1, E1, E0,dest_is_reg);"
lookup_handler "sarl"     2 i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "sarHandler(d, bitWidth, imm&0x1f, E1, E0, dest_is_reg);" 
                                       else ""
lookup_handler "sarq"     1 _ = Just "sarHandler(d, bitWidth, 1, E1, E0,dest_is_reg);"
lookup_handler "sarq"     2 i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "sarHandler(d, bitWidth, imm&0x3f, E1, E0, dest_is_reg);" 
                                       else ""
lookup_handler "sarw"     1 _ = Just "sarHandler(d, bitWidth, 1, E1, E0,dest_is_reg);"
lookup_handler "sarw"     2 i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "sarHandler(d, bitWidth, imm, E1, E0, dest_is_reg);" 
                                       else ""
lookup_handler "sbbb"     _ _ = Just "sbbHandler(d, bitWidth, E1, E0, E2, dest_is_reg);"
lookup_handler "sbbl"     _ _ = Just "sbbHandler(d, bitWidth, E1, E0, E2, dest_is_reg);"
lookup_handler "sbbq"     _ _ = Just "sbbHandler(d, bitWidth, E1, E0, E2, dest_is_reg);"
lookup_handler "sbbw"     _ _ = Just "sbbHandler(d, bitWidth, E1, E0, E2, dest_is_reg);"

-- this handles all the SETcc
lookup_handler ('s':'e':'t':cc) _ _ = Just $ "setccHandler(d, \"" ++ cc ++ "\" , E0, dest_is_reg);"

lookup_handler "shlb"     1 _ = Just "shlHandler(d, bitWidth, 1, E1, E0,dest_is_reg);"
lookup_handler "shlb"     2 i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "shlHandler(d, bitWidth, imm, E1, E0, dest_is_reg);"  
                                       else ""
lookup_handler "shld"     _ i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "shldHandler(d, bitWidth, imm &(bitWidth-1), E1, E0, E2, dest_is_reg);" 
                                       else "shldHandler(d, bitWidth, E1, E0, E2, E3, dest_is_reg);"
lookup_handler "shll"     1 _ = Just "shlHandler(d, bitWidth, 1, E1, E0,dest_is_reg);"
lookup_handler "shll"     2 i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "shlHandler(d, bitWidth, imm&0x1f, E1, E0, dest_is_reg);" 
                                       else ""
lookup_handler "shlq"     1 _ = Just "shlHandler(d, bitWidth, 1, E1, E0,dest_is_reg);"
lookup_handler "shlq"     2 i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "shlHandler(d, bitWidth, imm&0x3f, E1, E0, dest_is_reg);" 
                                       else ""
lookup_handler "shlw"     1 _ = Just "shlHandler(d, bitWidth, 1, E1, E0,dest_is_reg);"
lookup_handler "shlw"     2 i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "shlHandler(d, bitWidth, imm, E1, E0, dest_is_reg);" 
                                       else ""
lookup_handler "shrb"     1 _ = Just "shrHandler(d, bitWidth, 1, E1, E0,dest_is_reg);"
lookup_handler "shrb"     2 i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "shrHandler(d, bitWidth, imm, E1, E0, dest_is_reg);" 
                                       else ""
lookup_handler "shrl"     1 _ = Just "shrHandler(d, bitWidth, 1, E1, E0,dest_is_reg);"
lookup_handler "shrl"     2 i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "shrHandler(d, bitWidth, imm&0x1f, E1, E0, dest_is_reg);" 
                                       else ""
lookup_handler "shrq"     1 _ = Just "shrHandler(d, bitWidth, 1, E1, E0,dest_is_reg);"
lookup_handler "shrq"     2 i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "shrHandler(d, bitWidth, imm&0x3f, E1, E0, dest_is_reg);" 
                                       else ""
lookup_handler "shrw"     1 _ = Just "shrHandler(d, bitWidth, 1, E1, E0,dest_is_reg);"
lookup_handler "shrw"     2 i = Just $ if (((last (operand_types i)) == "I")) 
                                       then "shrHandler(d, bitWidth, imm, E1, E0, dest_is_reg);" 
                                       else ""
lookup_handler "shufps"   _ _ = Just "shufpsHandler(d, imm, E1, E0, E2, E3);"
lookup_handler "stc"      _ _ = Just "setFlag(d.Vnprime,V_CF, SymBool::_true(), d.constraints, d.post_suffix);"
lookup_handler "subb"     _ _ = Just "subHandler(d, bitWidth, E1, E0, E2, dest_is_reg);"
lookup_handler "subl"     _ _ = Just "subHandler(d, bitWidth, E1, E0, E2, dest_is_reg);"
lookup_handler "subpd"    _ _ = Just "subdHandler(d, 2, E1, E0, E2, dest_is_reg);"
lookup_handler "subps"    2 _ = Just "subpsHandler(d, 2, bitWidth, E1, E0, E2);"
lookup_handler "subq"     _ _ = Just "subHandler(d, bitWidth, E1, E0, E2, dest_is_reg);"
lookup_handler "subsd"    _ _ = Just "subdHandler(d, 1, E1, E0, E2, dest_is_reg);"
lookup_handler "subss"    _ _ = Just "subfHandler(d, 1, E1, E0, E2, dest_is_reg);"
lookup_handler "subw"     _ _ = Just "subHandler(d, bitWidth, E1, E0, E2, dest_is_reg);"
lookup_handler "testb"    _ _ = Just "testHandler(d, bitWidth, E0, E1);"
lookup_handler "testl"    _ _ = Just "testHandler(d, bitWidth, E0, E1);"
lookup_handler "testq"    _ _ = Just "testHandler(d, bitWidth, E0, E1);"
lookup_handler "testw"    _ _ = Just "testHandler(d, bitWidth, E0, E1);"
lookup_handler "ucomiss"  _ _ = Just "ucomissHandler(d, E0, E1);"
lookup_handler "ucomisd"  _ _ = Just "ucomisdHandler(d, E0, E1);"
lookup_handler "unpcklpd" 2 _ = Just "unpcklpdHandler(d, bitWidth, false, E1, E0, E2);"
lookup_handler "unpcklps" 2 _ = Just "unpcklpsHandler(d, bitWidth, false, E1, E0, E2);"
lookup_handler "vaddps"   _ _ = Just "addfHandler(d, 4, E0, E1, E2, dest_is_reg);"
lookup_handler "vaddsd"   _ _ = Just "vaddsdHandler(d, 1, E0, E1, E2, dest_is_reg);"
lookup_handler "vlddqu"   _ _ = Just "movHandler(d, bitWidth, bitWidth1, E0, E1, true, dest_is_reg);"
lookup_handler "vmovddup" _ _ = Just "movddupHandler(d, E0, E1);"
lookup_handler "vmulss"   _ _ = Just "mulfHandler(d, 1, E0, E1, E2, dest_is_reg);"
lookup_handler "vpunpcklqdq" _ _ = Just "vpunpcklqdqHandler(d, E0, E1, E2);"
lookup_handler "xorb"     _ _ = Just "xorHandler(d, bitWidth, E1, E0, E2, dest_is_reg);"
lookup_handler "xorl"     _ _ = Just "xorHandler(d, bitWidth, E1, E0, E2, dest_is_reg);"
lookup_handler "xorpd"    _ _ = Just "pxorHandler(d, E1, E0, E2);"
lookup_handler "xorps"    2 _ = Just "xorpsHandler(d, 2, bitWidth, E1, E0, E2);"
lookup_handler "xorps"    3 _ = Just "xorpsHandler(d, 3, bitWidth, E1, E0, E2);"
lookup_handler "xorq"     _ _ = Just "xorHandler(d, bitWidth, E1, E0, E2, dest_is_reg);"
lookup_handler "xorw"     _ _ = Just "xorHandler(d, bitWidth, E1, E0, E2, dest_is_reg);"
lookup_handler opcode _ _ = Nothing

instruction_supported :: String -> Int -> Instr -> Bool
instruction_supported x y z = 
  case lookup_handler x y z of
    Just _  -> True
    Nothing -> False

lookup_handler_or_error :: String -> Int -> Instr -> String
lookup_handler_or_error opcode num i = 
    case lookup_handler opcode num i of 
      Just a  -> a
      Nothing -> "throw VALIDATOR_ERROR(\"Instruction '" ++ opcode ++ "/" ++ (show num) ++ " not implemented.\");"

-- Generates a declaration for an instruction
validator_decl :: [Instr] -> String
validator_decl is = concat $ ((("#ifndef SWITCH_H\n#define SWITCH_H\n#include \"src/validator/legacy/legacy_handlers.h\"\n#include \"src/validator/legacy/c_interface.h\"\n") : (nub (map render (tail is)))) ++ ("#endif"):[])
  where render i = ("void " ++ (att i) ++ (concat (operand_types i)) ++
                  "Handler(v_data d,  unsigned int bitWidth, unsigned int bitWidth1, " ++ (assm_args i) ++ ");\n")

-- Generates a definition for an instruction		
validator_defn :: [Instr] -> String
validator_defn is = concat $ ("#include \"switch.h\"\n") : (nub (map render (tail is)))
  where render i = "void " ++ (att i) ++ (concat (operand_types i)) ++
                   "Handler(v_data d, unsigned int bitWidth, unsigned int bitWidth1, " ++ 
                    (assm_args i) ++ "){"++ (lookup_handler_or_error (att i) (arity i) i) ++ "}\n"		
 
 
filimm :: [(String,String,String)] -> Int -> [(String,String,String)]
filimm ((w,"I",y):xs) z = (w , "I" , (if (z>(read w)) then ("vc_bvSignExtend(SymBitVector::constant("++ w ++",getLastOperandImm(instr)), "++(show z)++"),getLastOperandImm(instr)") else ("SymBitVector::constant("++ w ++",getLastOperandImm(instr)),getLastOperandImm(instr)"))): (filimm xs z)
filimm ((w,x,y):xs) z = (w,x,y): (filimm xs (max (read w) z))  
filimm [] z = []

getmem :: [(String,String,String)] -> Int -> String
getmem ((w,"M","R"):xs) i= ( "\n  SymBitVector E_src1=SymBitVector::constant(32, 0);\n")
getmem ((w,"M","W"):xs) i= ( "\n  SymBitVector E_dest=SymBitVector::constant(32, 0);\n")
getmem ((w,"M","X"):xs) i= ( "\n  SymBitVector E_src1=SymBitVector::constant(32, 0);\n  SymBitVector E_dest=SymBitVector::constant(0,0);\n")
getmem ((w,x,y):xs) i = getmem xs (i+1)
getmem [] _ = ""


-- Generates a switch statement showing if an opcode is suppported
supported_switch :: [Instr] -> String
supported_switch is = foldl1 (++) (map instr_switch is)
  where
    show_bool True = "true"
    show_bool False = "false"

    case_label i = "case " ++ (to_enum i) ++ ":\n"
    result i     = "  return " ++ (show_bool (instruction_supported (att i) (arity i) i)) ++ ";\n";

    instr_switch i = (case_label i) ++ (result i)

    

-- Generates a switch statement based on opcode enum
validator_switch :: [Instr] -> [String] -> String
validator_switch is regs = concat $ map (render regs) (tail is)
    where render regs i= "case " ++ (to_enum i) ++ ": {\n\t" ++ (getmem (myoperands i) 0) ++ (att i)
                                 ++ (concat (operand_types i)) ++"Handler(d, " ++  (args i) ++ ");\n\tbreak;\n}\n\n"
	  args i = concat $ intersperse "," $ ((if (null (operand_widths i)) 
                                          then ("0,0") 
                                          else (if(null (tail (operand_widths i))) 
                                                then ((head (operand_widths i))++",0") 
                                                else ((head (operand_widths i))++","++
                                                      (head (tail (operand_widths i)))) )): 
                                          (if null (operand_types i) 
                                           then "false " 
                                           else 
                                             if ((head (operand_types i)) `elem` regs) 
                                             then "true " 
                                             else "false ") :
                                          (args' (filimm (myoperands i) 0) 0))  ++ (condargs (sort (cond_read i)))
	  
          args' ((w,"R","R"):xs) i = (c1++(show i)++cpre ++(show ((read w) - 1)) ++c2):[] ++ (args' xs (i+1))
          args' ((w,"R","W"):xs) i = (c1++(show i)++cpost ++(show ((read w) - 1)) ++c2):[] ++ (args' xs (i+1))
          args' ((w,"R","X"):xs) i = (c1++(show i)++cpre ++(show ((read w) - 1)) ++c2++","++c1++(show i)++cpost ++(show ((read w) - 1)) ++c2):[] ++ (args' xs (i+1))
      	  args' ((w,"I",x):xs) i =    x:[] ++ (args' xs (i+1)) 
          args' ((w,"M","R"):xs) i = ("E_src1"):[] ++ (args' xs (i+1))
          args' ((w,"M","W"):xs) i = ("E_dest"):[] ++ (args' xs (i+1))
          args' ((w,"M","X"):xs) i = ("E_src1,E_dest"):[] ++ (args' xs (i+1))
          args' ((w,"AL","R"):xs) i = (crax++cpre ++(show ((read w) - 1)) ++c2):[] ++ (args' xs (i+1))
          args' ((w,"AL","W"):xs) i = (crax++cpost ++(show ((read w) - 1)) ++c2):[] ++ (args' xs (i+1))
          args' ((w,"AL","X"):xs) i = (crax++cpre ++(show ((read w) - 1)) ++c2++","++crax++cpost ++(show ((read w) - 1)) ++c2):[] ++ (args' xs (i+1))
          args' ((w,"AX","R"):xs) i = (crax++cpre ++(show ((read w) - 1)) ++c2):[] ++ (args' xs (i+1))
          args' ((w,"AX","W"):xs) i = (crax++cpost ++(show ((read w) - 1)) ++c2):[] ++ (args' xs (i+1))
          args' ((w,"AX","X"):xs) i = (crax++cpre ++(show ((read w) - 1)) ++c2++","++crax++cpost ++(show ((read w) - 1)) ++c2):[] ++ (args' xs (i+1))
          args' ((w,"EAX","R"):xs) i = (crax++cpre ++(show ((read w) - 1)) ++c2):[] ++ (args' xs (i+1))
          args' ((w,"EAX","W"):xs) i = (crax++cpost ++(show ((read w) - 1)) ++c2):[] ++ (args' xs (i+1))
          args' ((w,"EAX","X"):xs) i = (crax++cpre ++(show ((read w) - 1)) ++c2++","++crax++cpost ++(show ((read w) - 1)) ++c2):[] ++ (args' xs (i+1))
          args' ((w,"RAX","R"):xs) i = (crax++cpre ++(show ((read w) - 1)) ++c2):[] ++ (args' xs (i+1))
          args' ((w,"RAX","W"):xs) i = (crax++cpost ++(show ((read w) - 1)) ++c2):[] ++ (args' xs (i+1))
          args' ((w,"RAX","X"):xs) i = (crax++cpre ++(show ((read w) - 1)) ++c2++","++crax++cpost ++(show ((read w) - 1)) ++c2):[] ++ (args' xs (i+1))
          args' ((w,"CL","R"):xs) i = (crcx++cpre ++(show ((read w) - 1)) ++c2):[] ++ (args' xs (i+1))
          args' ((w,"CL","W"):xs) i = (crcx++cpost ++(show ((read w) - 1)) ++c2):[] ++ (args' xs (i+1))
          args' ((w,"CL","X"):xs) i = (crcx++cpre ++(show ((read w) - 1)) ++c2++","++crax++cpost ++(show ((read w) - 1)) ++c2):[] ++ (args' xs (i+1))
          args' ((w,"DX","R"):xs) i = (crdx++cpre ++(show ((read w) - 1)) ++c2):[] ++ (args' xs (i+1))
          args' ((w,"DX","W"):xs) i = (crdx++cpost ++(show ((read w) - 1)) ++c2):[] ++ (args' xs (i+1))
          args' ((w,"DX","X"):xs) i = (crdx++cpre ++(show ((read w) - 1)) ++c2++","++crax++cpost ++(show ((read w) - 1)) ++c2):[] ++ (args' xs (i+1))
          args' ((w,"S","R"):xs) i = (cx1++(show i)++cxpre):[] ++ (args' xs (i+1))
          args' ((w,"S","W"):xs) i = (cx1++(show i)++cxpost):[] ++ (args' xs (i+1))
          args' ((w,"S","X"):xs) i = (cx1++(show i)++cxpre++","++cx1++(show i)++cxpost):[] ++ (args' xs (i+1))
          args' ((w,"S0","R"):xs) i = (cxmm0++cxpre):[] ++ (args' xs (i+1))
          args' ((w,"S0","W"):xs) i = (cxmm0++cpost):[] ++ (args' xs (i+1))
          args' ((w,"S0","X"):xs) i = (cxmm0++cpre++","++cxmm0++cpost):[] ++ (args' xs (i+1))
          args' ((_,_,_):xs) i = (args' xs (i+1))
          args' [] _ = []
          condargs (x:xs) = ("getBoolExpr(V_"++(map toUpper x)++", d.pre_suffix, d.Vn)"):(condargs xs)
	  condargs [] = []
	  c1="vc_bvExtract(regExprWVN(instr.get_operand<R64>("
	  cx1="regExprWVN(XMM_BEG+instr.get_operand<Xmm>("
	  cpre="),d.pre_suffix, d.Vn, V_UNITSIZE), "
	  c2=", 0)"
	  cpost="),d.post_suffix, d.Vnprime, V_UNITSIZE), "
	  cxpre="),d.pre_suffix, d.Vn, V_XMMUNIT) "
	  cxpost="),d.post_suffix, d.Vnprime, V_XMMUNIT) "
	  crax="vc_bvExtract(regExprWVN((rax"
  	  crcx="vc_bvExtract(regExprWVN((rcx"
	  crdx="vc_bvExtract(regExprWVN((rdx"
	  cxmm0="regExprWVN((XMM_BEG"

valid_instr :: [String] -> [String] -> Bool
valid_instr [] _ = True
valid_instr (x:xs) r = (x `elem` r) && (valid_instr xs r)
  	  
validator_test :: [Instr] -> [String] -> String
validator_test is regs = concat $ map (render regs) (tail is)
  where render regs i= if (valid_instr  (operand_types i) regs) then "validator.debug(Instruction(" ++ (to_enum i) ++ ",{" ++(args i) ++ "}));\n" else ""
	args i = concat $ intersperse "," $ (args' (myoperands i) 0)
        args' ((w,"R","R"):xs) i = ("r8"): (args' xs (i+1))
        args' ((w,"R","W"):xs) i = ("r9"): (args' xs (i+1))
        args' ((w,"R","X"):xs) i = ("r" ++ (show (10+i))):(args' xs (i+1))
	args' ((w,"I",_):xs) i =    w:(args' xs (i+1)) 
	args' ((w,"AL",_):xs) i = ("rax") : (args' xs (i+1))
        args' ((w,"AX",_):xs) i = ("rax") : (args' xs (i+1))
        args' ((w,"EAX",_):xs) i = ("rax") : (args' xs (i+1))
        args' ((w,"RAX",_):xs) i = ("rax") : (args' xs (i+1))
        args' ((w,"CL",_):xs) i = ("rcx") : (args' xs (i+1))
        args' ((_,_,_):xs) i = (args' xs (i+1))
        args' [] _ = []
        
isrepinstr :: Instr -> Bool
isrepinstr x = (isPrefixOf "rep" (att x))        
        
--enter has 2 immediate, rep lods has a space in opcode  	  
get_valid_instrs :: [Instr] -> [Instr]
get_valid_instrs (x:xs) = if ((is_cond_jump x) || ((valid_instr (operand_types x) ["R", "I", "AL", "AX", "EAX","RAX", "CL", "DX", "M", "S", "S0"]  && (not ((att x) `elem` ["inb", "inw", "inl", "outb", "outw", "outl", "ins", "outs", "enterq"])) && (not (isrepinstr x)) ))) then x: (get_valid_instrs xs) else (get_valid_instrs xs)
get_valid_instrs [] = []
  	  
-- Write some code!
main :: IO ()
main = do args <- getArgs
          --instrs_file <- readFile $ head args
          instrs <- parse_instrs "../../ext/x64asm/src/x86.csv"
          let valid_instrs = get_valid_instrs instrs 
	  writeFile "switch.h" $ validator_decl valid_instrs
          writeFile "switch.cc" $ validator_defn valid_instrs
          writeFile "validator.switch" $ validator_switch valid_instrs ["R","AL", "AX", "EAX","RAX", "CL", "DX", "S", "SO"] --these are registers, they were earlier gpregs
          writeFile "supported.switch" $ supported_switch valid_instrs 
	 -- writeFile "test.inc" $ validator_test valid_instrs ["R", "I", "AL", "AX", "EAX","RAX", "CL", "DX"]--these are gp regs
