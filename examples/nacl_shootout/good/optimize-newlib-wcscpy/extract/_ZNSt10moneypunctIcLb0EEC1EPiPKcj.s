  .text
  .globl _ZNSt10moneypunctIcLb0EEC1EPiPKcj
  .type _ZNSt10moneypunctIcLb0EEC1EPiPKcj, @function

#! file-offset 0xbe820
#! rip-offset  0x7e820
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb0EEC1EPiPKcj:                                #        0x7e820  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7e820  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7e821  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7e823  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                  #  4     0x7e825  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                  #  5     0x7e827  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  6     0x7e829  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  7     0x7e82b  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  8     0x7e82e  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                                                 #  9     0x7e831  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  10    0x7e833  2      OPC=movl_r32_r32    
  movl $0x1003ae48, (%r15,%rbx,1)                                  #  11    0x7e835  8      OPC=movl_m32_imm32  
  setne %al                                                        #  12    0x7e83d  3      OPC=setne_r8        
  movl %ebx, %ebx                                                  #  13    0x7e840  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  14    0x7e842  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                  #  15    0x7e84b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  16    0x7e84d  5      OPC=movl_m32_r32    
  nop                                                              #  17    0x7e852  1      OPC=nop             
  nop                                                              #  18    0x7e853  1      OPC=nop             
  nop                                                              #  19    0x7e854  1      OPC=nop             
  nop                                                              #  20    0x7e855  1      OPC=nop             
  nop                                                              #  21    0x7e856  1      OPC=nop             
  nop                                                              #  22    0x7e857  1      OPC=nop             
  nop                                                              #  23    0x7e858  1      OPC=nop             
  nop                                                              #  24    0x7e859  1      OPC=nop             
  nop                                                              #  25    0x7e85a  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb0EE24_M_initialize_moneypunctEPiPKc  #  26    0x7e85b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0x7e860  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0x7e863  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0x7e866  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0x7e867  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0x7e869  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0x7e870  1      OPC=nop             
  nop                                                              #  33    0x7e871  1      OPC=nop             
  nop                                                              #  34    0x7e872  1      OPC=nop             
  nop                                                              #  35    0x7e873  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0x7e874  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0x7e877  3      OPC=jmpq_r64        
  nop                                                              #  38    0x7e87a  1      OPC=nop             
  nop                                                              #  39    0x7e87b  1      OPC=nop             
  nop                                                              #  40    0x7e87c  1      OPC=nop             
  nop                                                              #  41    0x7e87d  1      OPC=nop             
  nop                                                              #  42    0x7e87e  1      OPC=nop             
  nop                                                              #  43    0x7e87f  1      OPC=nop             
  nop                                                              #  44    0x7e880  1      OPC=nop             
  nop                                                              #  45    0x7e881  1      OPC=nop             
  nop                                                              #  46    0x7e882  1      OPC=nop             
  nop                                                              #  47    0x7e883  1      OPC=nop             
  nop                                                              #  48    0x7e884  1      OPC=nop             
  nop                                                              #  49    0x7e885  1      OPC=nop             
  nop                                                              #  50    0x7e886  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0x7e887  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0x7e889  4      OPC=movl_m32_r32    
  nop                                                              #  53    0x7e88d  1      OPC=nop             
  nop                                                              #  54    0x7e88e  1      OPC=nop             
  nop                                                              #  55    0x7e88f  1      OPC=nop             
  nop                                                              #  56    0x7e890  1      OPC=nop             
  nop                                                              #  57    0x7e891  1      OPC=nop             
  nop                                                              #  58    0x7e892  1      OPC=nop             
  nop                                                              #  59    0x7e893  1      OPC=nop             
  nop                                                              #  60    0x7e894  1      OPC=nop             
  nop                                                              #  61    0x7e895  1      OPC=nop             
  nop                                                              #  62    0x7e896  1      OPC=nop             
  nop                                                              #  63    0x7e897  1      OPC=nop             
  nop                                                              #  64    0x7e898  1      OPC=nop             
  nop                                                              #  65    0x7e899  1      OPC=nop             
  nop                                                              #  66    0x7e89a  1      OPC=nop             
  nop                                                              #  67    0x7e89b  1      OPC=nop             
  nop                                                              #  68    0x7e89c  1      OPC=nop             
  nop                                                              #  69    0x7e89d  1      OPC=nop             
  nop                                                              #  70    0x7e89e  1      OPC=nop             
  nop                                                              #  71    0x7e89f  1      OPC=nop             
  nop                                                              #  72    0x7e8a0  1      OPC=nop             
  nop                                                              #  73    0x7e8a1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0x7e8a2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0x7e8a7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0x7e8ab  2      OPC=movl_r32_r32    
  nop                                                              #  77    0x7e8ad  1      OPC=nop             
  nop                                                              #  78    0x7e8ae  1      OPC=nop             
  nop                                                              #  79    0x7e8af  1      OPC=nop             
  nop                                                              #  80    0x7e8b0  1      OPC=nop             
  nop                                                              #  81    0x7e8b1  1      OPC=nop             
  nop                                                              #  82    0x7e8b2  1      OPC=nop             
  nop                                                              #  83    0x7e8b3  1      OPC=nop             
  nop                                                              #  84    0x7e8b4  1      OPC=nop             
  nop                                                              #  85    0x7e8b5  1      OPC=nop             
  nop                                                              #  86    0x7e8b6  1      OPC=nop             
  nop                                                              #  87    0x7e8b7  1      OPC=nop             
  nop                                                              #  88    0x7e8b8  1      OPC=nop             
  nop                                                              #  89    0x7e8b9  1      OPC=nop             
  nop                                                              #  90    0x7e8ba  1      OPC=nop             
  nop                                                              #  91    0x7e8bb  1      OPC=nop             
  nop                                                              #  92    0x7e8bc  1      OPC=nop             
  nop                                                              #  93    0x7e8bd  1      OPC=nop             
  nop                                                              #  94    0x7e8be  1      OPC=nop             
  nop                                                              #  95    0x7e8bf  1      OPC=nop             
  nop                                                              #  96    0x7e8c0  1      OPC=nop             
  nop                                                              #  97    0x7e8c1  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0x7e8c2  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb0EEC1EPiPKcj, .-_ZNSt10moneypunctIcLb0EEC1EPiPKcj

