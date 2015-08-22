  .text
  .globl iswalnum
  .type iswalnum, @function

#! file-offset 0x189580
#! rip-offset  0x149580
#! capacity    128 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswalnum:                 #        0x149580  0      OPC=<label>         
  pushq %rbx               #  1     0x149580  1      OPC=pushq_r64_1     
  movl %edi, %ebx          #  2     0x149581  2      OPC=movl_r32_r32    
  nop                      #  3     0x149583  1      OPC=nop             
  nop                      #  4     0x149584  1      OPC=nop             
  nop                      #  5     0x149585  1      OPC=nop             
  nop                      #  6     0x149586  1      OPC=nop             
  nop                      #  7     0x149587  1      OPC=nop             
  nop                      #  8     0x149588  1      OPC=nop             
  nop                      #  9     0x149589  1      OPC=nop             
  nop                      #  10    0x14958a  1      OPC=nop             
  nop                      #  11    0x14958b  1      OPC=nop             
  nop                      #  12    0x14958c  1      OPC=nop             
  nop                      #  13    0x14958d  1      OPC=nop             
  nop                      #  14    0x14958e  1      OPC=nop             
  nop                      #  15    0x14958f  1      OPC=nop             
  nop                      #  16    0x149590  1      OPC=nop             
  nop                      #  17    0x149591  1      OPC=nop             
  nop                      #  18    0x149592  1      OPC=nop             
  nop                      #  19    0x149593  1      OPC=nop             
  nop                      #  20    0x149594  1      OPC=nop             
  nop                      #  21    0x149595  1      OPC=nop             
  nop                      #  22    0x149596  1      OPC=nop             
  nop                      #  23    0x149597  1      OPC=nop             
  nop                      #  24    0x149598  1      OPC=nop             
  nop                      #  25    0x149599  1      OPC=nop             
  nop                      #  26    0x14959a  1      OPC=nop             
  callq .iswalpha          #  27    0x14959b  5      OPC=callq_label     
  movl %eax, %edx          #  28    0x1495a0  2      OPC=movl_r32_r32    
  movl $0x1, %eax          #  29    0x1495a2  5      OPC=movl_r32_imm32  
  testl %edx, %edx         #  30    0x1495a7  2      OPC=testl_r32_r32   
  jne .L_1495e0            #  31    0x1495a9  2      OPC=jne_label       
  movl %ebx, %edi          #  32    0x1495ab  2      OPC=movl_r32_r32    
  nop                      #  33    0x1495ad  1      OPC=nop             
  nop                      #  34    0x1495ae  1      OPC=nop             
  nop                      #  35    0x1495af  1      OPC=nop             
  nop                      #  36    0x1495b0  1      OPC=nop             
  nop                      #  37    0x1495b1  1      OPC=nop             
  nop                      #  38    0x1495b2  1      OPC=nop             
  nop                      #  39    0x1495b3  1      OPC=nop             
  nop                      #  40    0x1495b4  1      OPC=nop             
  nop                      #  41    0x1495b5  1      OPC=nop             
  nop                      #  42    0x1495b6  1      OPC=nop             
  nop                      #  43    0x1495b7  1      OPC=nop             
  nop                      #  44    0x1495b8  1      OPC=nop             
  nop                      #  45    0x1495b9  1      OPC=nop             
  nop                      #  46    0x1495ba  1      OPC=nop             
  callq .iswdigit          #  47    0x1495bb  5      OPC=callq_label     
  testl %eax, %eax         #  48    0x1495c0  2      OPC=testl_r32_r32   
  setne %al                #  49    0x1495c2  3      OPC=setne_r8        
  movzbl %al, %eax         #  50    0x1495c5  3      OPC=movzbl_r32_r8   
  nop                      #  51    0x1495c8  1      OPC=nop             
  nop                      #  52    0x1495c9  1      OPC=nop             
  nop                      #  53    0x1495ca  1      OPC=nop             
  nop                      #  54    0x1495cb  1      OPC=nop             
  nop                      #  55    0x1495cc  1      OPC=nop             
  nop                      #  56    0x1495cd  1      OPC=nop             
  nop                      #  57    0x1495ce  1      OPC=nop             
  nop                      #  58    0x1495cf  1      OPC=nop             
  nop                      #  59    0x1495d0  1      OPC=nop             
  nop                      #  60    0x1495d1  1      OPC=nop             
  nop                      #  61    0x1495d2  1      OPC=nop             
  nop                      #  62    0x1495d3  1      OPC=nop             
  nop                      #  63    0x1495d4  1      OPC=nop             
  nop                      #  64    0x1495d5  1      OPC=nop             
  nop                      #  65    0x1495d6  1      OPC=nop             
  nop                      #  66    0x1495d7  1      OPC=nop             
  nop                      #  67    0x1495d8  1      OPC=nop             
  nop                      #  68    0x1495d9  1      OPC=nop             
  nop                      #  69    0x1495da  1      OPC=nop             
  nop                      #  70    0x1495db  1      OPC=nop             
  nop                      #  71    0x1495dc  1      OPC=nop             
  nop                      #  72    0x1495dd  1      OPC=nop             
  nop                      #  73    0x1495de  1      OPC=nop             
  nop                      #  74    0x1495df  1      OPC=nop             
.L_1495e0:                 #        0x1495e0  0      OPC=<label>         
  popq %rbx                #  75    0x1495e0  1      OPC=popq_r64_1      
  popq %r11                #  76    0x1495e1  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  77    0x1495e3  7      OPC=andl_r32_imm32  
  nop                      #  78    0x1495ea  1      OPC=nop             
  nop                      #  79    0x1495eb  1      OPC=nop             
  nop                      #  80    0x1495ec  1      OPC=nop             
  nop                      #  81    0x1495ed  1      OPC=nop             
  addq %r15, %r11          #  82    0x1495ee  3      OPC=addq_r64_r64    
  jmpq %r11                #  83    0x1495f1  3      OPC=jmpq_r64        
  nop                      #  84    0x1495f4  1      OPC=nop             
  nop                      #  85    0x1495f5  1      OPC=nop             
  nop                      #  86    0x1495f6  1      OPC=nop             
  nop                      #  87    0x1495f7  1      OPC=nop             
  nop                      #  88    0x1495f8  1      OPC=nop             
  nop                      #  89    0x1495f9  1      OPC=nop             
  nop                      #  90    0x1495fa  1      OPC=nop             
  nop                      #  91    0x1495fb  1      OPC=nop             
  nop                      #  92    0x1495fc  1      OPC=nop             
  nop                      #  93    0x1495fd  1      OPC=nop             
  nop                      #  94    0x1495fe  1      OPC=nop             
  nop                      #  95    0x1495ff  1      OPC=nop             
  nop                      #  96    0x149600  1      OPC=nop             
  nop                      #  97    0x149601  1      OPC=nop             
  nop                      #  98    0x149602  1      OPC=nop             
  nop                      #  99    0x149603  1      OPC=nop             
  nop                      #  100   0x149604  1      OPC=nop             
  nop                      #  101   0x149605  1      OPC=nop             
  nop                      #  102   0x149606  1      OPC=nop             
                                                                         
.size iswalnum, .-iswalnum

