  .text
  .globl _ZNSt8numpunctIwEC1Ej
  .type _ZNSt8numpunctIwEC1Ej, @function

#! file-offset 0xf67c0
#! rip-offset  0xb67c0
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwEC1Ej:                                #        0xb67c0  0      OPC=<label>         
  pushq %rbx                                           #  1     0xb67c0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0xb67c1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0xb67c3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  4     0xb67c5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  5     0xb67c7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  6     0xb67ca  3      OPC=addq_r64_r64    
  testl %esi, %esi                                     #  7     0xb67cd  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  8     0xb67cf  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)                      #  9     0xb67d1  8      OPC=movl_m32_imm32  
  setne %al                                            #  10    0xb67d9  3      OPC=setne_r8        
  nop                                                  #  11    0xb67dc  1      OPC=nop             
  nop                                                  #  12    0xb67dd  1      OPC=nop             
  nop                                                  #  13    0xb67de  1      OPC=nop             
  nop                                                  #  14    0xb67df  1      OPC=nop             
  movl %ebx, %ebx                                      #  15    0xb67e0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  16    0xb67e2  9      OPC=movl_m32_imm32  
  xorl %esi, %esi                                      #  17    0xb67eb  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                      #  18    0xb67ed  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  19    0xb67ef  5      OPC=movl_m32_r32    
  nop                                                  #  20    0xb67f4  1      OPC=nop             
  nop                                                  #  21    0xb67f5  1      OPC=nop             
  nop                                                  #  22    0xb67f6  1      OPC=nop             
  nop                                                  #  23    0xb67f7  1      OPC=nop             
  nop                                                  #  24    0xb67f8  1      OPC=nop             
  nop                                                  #  25    0xb67f9  1      OPC=nop             
  nop                                                  #  26    0xb67fa  1      OPC=nop             
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  27    0xb67fb  5      OPC=callq_label     
  addl $0x10, %esp                                     #  28    0xb6800  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  29    0xb6803  3      OPC=addq_r64_r64    
  popq %rbx                                            #  30    0xb6806  1      OPC=popq_r64_1      
  popq %r11                                            #  31    0xb6807  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  32    0xb6809  7      OPC=andl_r32_imm32  
  nop                                                  #  33    0xb6810  1      OPC=nop             
  nop                                                  #  34    0xb6811  1      OPC=nop             
  nop                                                  #  35    0xb6812  1      OPC=nop             
  nop                                                  #  36    0xb6813  1      OPC=nop             
  addq %r15, %r11                                      #  37    0xb6814  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  38    0xb6817  3      OPC=jmpq_r64        
  nop                                                  #  39    0xb681a  1      OPC=nop             
  nop                                                  #  40    0xb681b  1      OPC=nop             
  nop                                                  #  41    0xb681c  1      OPC=nop             
  nop                                                  #  42    0xb681d  1      OPC=nop             
  nop                                                  #  43    0xb681e  1      OPC=nop             
  nop                                                  #  44    0xb681f  1      OPC=nop             
  nop                                                  #  45    0xb6820  1      OPC=nop             
  nop                                                  #  46    0xb6821  1      OPC=nop             
  nop                                                  #  47    0xb6822  1      OPC=nop             
  nop                                                  #  48    0xb6823  1      OPC=nop             
  nop                                                  #  49    0xb6824  1      OPC=nop             
  nop                                                  #  50    0xb6825  1      OPC=nop             
  nop                                                  #  51    0xb6826  1      OPC=nop             
  movl %ebx, %edi                                      #  52    0xb6827  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  53    0xb6829  4      OPC=movl_m32_r32    
  nop                                                  #  54    0xb682d  1      OPC=nop             
  nop                                                  #  55    0xb682e  1      OPC=nop             
  nop                                                  #  56    0xb682f  1      OPC=nop             
  nop                                                  #  57    0xb6830  1      OPC=nop             
  nop                                                  #  58    0xb6831  1      OPC=nop             
  nop                                                  #  59    0xb6832  1      OPC=nop             
  nop                                                  #  60    0xb6833  1      OPC=nop             
  nop                                                  #  61    0xb6834  1      OPC=nop             
  nop                                                  #  62    0xb6835  1      OPC=nop             
  nop                                                  #  63    0xb6836  1      OPC=nop             
  nop                                                  #  64    0xb6837  1      OPC=nop             
  nop                                                  #  65    0xb6838  1      OPC=nop             
  nop                                                  #  66    0xb6839  1      OPC=nop             
  nop                                                  #  67    0xb683a  1      OPC=nop             
  nop                                                  #  68    0xb683b  1      OPC=nop             
  nop                                                  #  69    0xb683c  1      OPC=nop             
  nop                                                  #  70    0xb683d  1      OPC=nop             
  nop                                                  #  71    0xb683e  1      OPC=nop             
  nop                                                  #  72    0xb683f  1      OPC=nop             
  nop                                                  #  73    0xb6840  1      OPC=nop             
  nop                                                  #  74    0xb6841  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  75    0xb6842  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  76    0xb6847  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  77    0xb684b  2      OPC=movl_r32_r32    
  nop                                                  #  78    0xb684d  1      OPC=nop             
  nop                                                  #  79    0xb684e  1      OPC=nop             
  nop                                                  #  80    0xb684f  1      OPC=nop             
  nop                                                  #  81    0xb6850  1      OPC=nop             
  nop                                                  #  82    0xb6851  1      OPC=nop             
  nop                                                  #  83    0xb6852  1      OPC=nop             
  nop                                                  #  84    0xb6853  1      OPC=nop             
  nop                                                  #  85    0xb6854  1      OPC=nop             
  nop                                                  #  86    0xb6855  1      OPC=nop             
  nop                                                  #  87    0xb6856  1      OPC=nop             
  nop                                                  #  88    0xb6857  1      OPC=nop             
  nop                                                  #  89    0xb6858  1      OPC=nop             
  nop                                                  #  90    0xb6859  1      OPC=nop             
  nop                                                  #  91    0xb685a  1      OPC=nop             
  nop                                                  #  92    0xb685b  1      OPC=nop             
  nop                                                  #  93    0xb685c  1      OPC=nop             
  nop                                                  #  94    0xb685d  1      OPC=nop             
  nop                                                  #  95    0xb685e  1      OPC=nop             
  nop                                                  #  96    0xb685f  1      OPC=nop             
  nop                                                  #  97    0xb6860  1      OPC=nop             
  nop                                                  #  98    0xb6861  1      OPC=nop             
  callq ._Unwind_Resume                                #  99    0xb6862  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIwEC1Ej, .-_ZNSt8numpunctIwEC1Ej

