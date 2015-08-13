  .text
  .globl read_sleb128
  .type read_sleb128, @function

#! file-offset 0x149900
#! rip-offset  0x109900
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode                
.read_sleb128:                #        0x109900  0      OPC=<label>           
  movl %edi, %eax             #  1     0x109900  2      OPC=movl_r32_r32      
  movl %esi, %esi             #  2     0x109902  2      OPC=movl_r32_r32      
  xorl %r8d, %r8d             #  3     0x109904  3      OPC=xorl_r32_r32      
  xorl %ecx, %ecx             #  4     0x109907  2      OPC=xorl_r32_r32      
  nop                         #  5     0x109909  1      OPC=nop               
  nop                         #  6     0x10990a  1      OPC=nop               
  nop                         #  7     0x10990b  1      OPC=nop               
  nop                         #  8     0x10990c  1      OPC=nop               
  nop                         #  9     0x10990d  1      OPC=nop               
  nop                         #  10    0x10990e  1      OPC=nop               
  nop                         #  11    0x10990f  1      OPC=nop               
  nop                         #  12    0x109910  1      OPC=nop               
  nop                         #  13    0x109911  1      OPC=nop               
  nop                         #  14    0x109912  1      OPC=nop               
  nop                         #  15    0x109913  1      OPC=nop               
  nop                         #  16    0x109914  1      OPC=nop               
  nop                         #  17    0x109915  1      OPC=nop               
  nop                         #  18    0x109916  1      OPC=nop               
  nop                         #  19    0x109917  1      OPC=nop               
  nop                         #  20    0x109918  1      OPC=nop               
  nop                         #  21    0x109919  1      OPC=nop               
  nop                         #  22    0x10991a  1      OPC=nop               
  nop                         #  23    0x10991b  1      OPC=nop               
  nop                         #  24    0x10991c  1      OPC=nop               
  nop                         #  25    0x10991d  1      OPC=nop               
  nop                         #  26    0x10991e  1      OPC=nop               
  nop                         #  27    0x10991f  1      OPC=nop               
.L_109920:                    #        0x109920  0      OPC=<label>           
  movl %eax, %eax             #  28    0x109920  2      OPC=movl_r32_r32      
  movzbl (%r15,%rax,1), %edi  #  29    0x109922  5      OPC=movzbl_r32_m8     
  addl $0x1, %eax             #  30    0x109927  3      OPC=addl_r32_imm8     
  movzbl %dil, %r9d           #  31    0x10992a  4      OPC=movzbl_r32_r8     
  movl %r9d, %edx             #  32    0x10992e  3      OPC=movl_r32_r32      
  andl $0x7f, %edx            #  33    0x109931  3      OPC=andl_r32_imm8     
  shll %cl, %edx              #  34    0x109934  2      OPC=shll_r32_cl       
  addl $0x7, %ecx             #  35    0x109936  3      OPC=addl_r32_imm8     
  orl %edx, %r8d              #  36    0x109939  3      OPC=orl_r32_r32       
  testb %dil, %dil            #  37    0x10993c  3      OPC=testb_r8_r8       
  nop                         #  38    0x10993f  1      OPC=nop               
  js .L_109920                #  39    0x109940  2      OPC=js_label          
  cmpl $0x1f, %ecx            #  40    0x109942  3      OPC=cmpl_r32_imm8     
  ja .L_109960                #  41    0x109945  2      OPC=ja_label          
  andl $0x40, %r9d            #  42    0x109947  4      OPC=andl_r32_imm8     
  je .L_109960                #  43    0x10994b  2      OPC=je_label          
  movl $0xffffffff, %edx      #  44    0x10994d  6      OPC=movl_r32_imm32_1  
  shll %cl, %edx              #  45    0x109953  2      OPC=shll_r32_cl       
  orl %edx, %r8d              #  46    0x109955  3      OPC=orl_r32_r32       
  nop                         #  47    0x109958  1      OPC=nop               
  nop                         #  48    0x109959  1      OPC=nop               
  nop                         #  49    0x10995a  1      OPC=nop               
  nop                         #  50    0x10995b  1      OPC=nop               
  nop                         #  51    0x10995c  1      OPC=nop               
  nop                         #  52    0x10995d  1      OPC=nop               
  nop                         #  53    0x10995e  1      OPC=nop               
  nop                         #  54    0x10995f  1      OPC=nop               
  nop                         #  55    0x109960  1      OPC=nop               
.L_109960:                    #        0x109961  0      OPC=<label>           
  popq %r11                   #  56    0x109961  2      OPC=popq_r64_1        
  movl %esi, %esi             #  57    0x109963  2      OPC=movl_r32_r32      
  movl %r8d, (%r15,%rsi,1)    #  58    0x109965  4      OPC=movl_m32_r32      
  andl $0xffffffe0, %r11d     #  59    0x109969  7      OPC=andl_r32_imm32    
  nop                         #  60    0x109970  1      OPC=nop               
  nop                         #  61    0x109971  1      OPC=nop               
  nop                         #  62    0x109972  1      OPC=nop               
  nop                         #  63    0x109973  1      OPC=nop               
  addq %r15, %r11             #  64    0x109974  3      OPC=addq_r64_r64      
  jmpq %r11                   #  65    0x109977  3      OPC=jmpq_r64          
  nop                         #  66    0x10997a  1      OPC=nop               
  nop                         #  67    0x10997b  1      OPC=nop               
  nop                         #  68    0x10997c  1      OPC=nop               
  nop                         #  69    0x10997d  1      OPC=nop               
  nop                         #  70    0x10997e  1      OPC=nop               
  nop                         #  71    0x10997f  1      OPC=nop               
  nop                         #  72    0x109980  1      OPC=nop               
  nop                         #  73    0x109981  1      OPC=nop               
  nop                         #  74    0x109982  1      OPC=nop               
  nop                         #  75    0x109983  1      OPC=nop               
  nop                         #  76    0x109984  1      OPC=nop               
  nop                         #  77    0x109985  1      OPC=nop               
  nop                         #  78    0x109986  1      OPC=nop               
  nop                         #  79    0x109987  1      OPC=nop               
                                                                              
.size read_sleb128, .-read_sleb128

