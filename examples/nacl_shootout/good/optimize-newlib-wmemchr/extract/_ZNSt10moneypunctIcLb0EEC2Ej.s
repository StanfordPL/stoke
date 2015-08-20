  .text
  .globl _ZNSt10moneypunctIcLb0EEC2Ej
  .type _ZNSt10moneypunctIcLb0EEC2Ej, @function

#! file-offset 0xbee40
#! rip-offset  0x7ee40
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb0EEC2Ej:                                     #        0x7ee40  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7ee40  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7ee41  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7ee43  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0x7ee45  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0x7ee47  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0x7ee4a  3      OPC=addq_r64_r64    
  testl %esi, %esi                                                 #  7     0x7ee4d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0x7ee4f  2      OPC=movl_r32_r32    
  movl $0x1003ae48, (%r15,%rbx,1)                                  #  9     0x7ee51  8      OPC=movl_m32_imm32  
  setne %al                                                        #  10    0x7ee59  3      OPC=setne_r8        
  nop                                                              #  11    0x7ee5c  1      OPC=nop             
  nop                                                              #  12    0x7ee5d  1      OPC=nop             
  nop                                                              #  13    0x7ee5e  1      OPC=nop             
  nop                                                              #  14    0x7ee5f  1      OPC=nop             
  movl %ebx, %ebx                                                  #  15    0x7ee60  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  16    0x7ee62  9      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  17    0x7ee6b  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  18    0x7ee6d  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  19    0x7ee6f  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  20    0x7ee74  2      OPC=xorl_r32_r32    
  nop                                                              #  21    0x7ee76  1      OPC=nop             
  nop                                                              #  22    0x7ee77  1      OPC=nop             
  nop                                                              #  23    0x7ee78  1      OPC=nop             
  nop                                                              #  24    0x7ee79  1      OPC=nop             
  nop                                                              #  25    0x7ee7a  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb0EE24_M_initialize_moneypunctEPiPKc  #  26    0x7ee7b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0x7ee80  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0x7ee83  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0x7ee86  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0x7ee87  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0x7ee89  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0x7ee90  1      OPC=nop             
  nop                                                              #  33    0x7ee91  1      OPC=nop             
  nop                                                              #  34    0x7ee92  1      OPC=nop             
  nop                                                              #  35    0x7ee93  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0x7ee94  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0x7ee97  3      OPC=jmpq_r64        
  nop                                                              #  38    0x7ee9a  1      OPC=nop             
  nop                                                              #  39    0x7ee9b  1      OPC=nop             
  nop                                                              #  40    0x7ee9c  1      OPC=nop             
  nop                                                              #  41    0x7ee9d  1      OPC=nop             
  nop                                                              #  42    0x7ee9e  1      OPC=nop             
  nop                                                              #  43    0x7ee9f  1      OPC=nop             
  nop                                                              #  44    0x7eea0  1      OPC=nop             
  nop                                                              #  45    0x7eea1  1      OPC=nop             
  nop                                                              #  46    0x7eea2  1      OPC=nop             
  nop                                                              #  47    0x7eea3  1      OPC=nop             
  nop                                                              #  48    0x7eea4  1      OPC=nop             
  nop                                                              #  49    0x7eea5  1      OPC=nop             
  nop                                                              #  50    0x7eea6  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0x7eea7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0x7eea9  4      OPC=movl_m32_r32    
  nop                                                              #  53    0x7eead  1      OPC=nop             
  nop                                                              #  54    0x7eeae  1      OPC=nop             
  nop                                                              #  55    0x7eeaf  1      OPC=nop             
  nop                                                              #  56    0x7eeb0  1      OPC=nop             
  nop                                                              #  57    0x7eeb1  1      OPC=nop             
  nop                                                              #  58    0x7eeb2  1      OPC=nop             
  nop                                                              #  59    0x7eeb3  1      OPC=nop             
  nop                                                              #  60    0x7eeb4  1      OPC=nop             
  nop                                                              #  61    0x7eeb5  1      OPC=nop             
  nop                                                              #  62    0x7eeb6  1      OPC=nop             
  nop                                                              #  63    0x7eeb7  1      OPC=nop             
  nop                                                              #  64    0x7eeb8  1      OPC=nop             
  nop                                                              #  65    0x7eeb9  1      OPC=nop             
  nop                                                              #  66    0x7eeba  1      OPC=nop             
  nop                                                              #  67    0x7eebb  1      OPC=nop             
  nop                                                              #  68    0x7eebc  1      OPC=nop             
  nop                                                              #  69    0x7eebd  1      OPC=nop             
  nop                                                              #  70    0x7eebe  1      OPC=nop             
  nop                                                              #  71    0x7eebf  1      OPC=nop             
  nop                                                              #  72    0x7eec0  1      OPC=nop             
  nop                                                              #  73    0x7eec1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0x7eec2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0x7eec7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0x7eecb  2      OPC=movl_r32_r32    
  nop                                                              #  77    0x7eecd  1      OPC=nop             
  nop                                                              #  78    0x7eece  1      OPC=nop             
  nop                                                              #  79    0x7eecf  1      OPC=nop             
  nop                                                              #  80    0x7eed0  1      OPC=nop             
  nop                                                              #  81    0x7eed1  1      OPC=nop             
  nop                                                              #  82    0x7eed2  1      OPC=nop             
  nop                                                              #  83    0x7eed3  1      OPC=nop             
  nop                                                              #  84    0x7eed4  1      OPC=nop             
  nop                                                              #  85    0x7eed5  1      OPC=nop             
  nop                                                              #  86    0x7eed6  1      OPC=nop             
  nop                                                              #  87    0x7eed7  1      OPC=nop             
  nop                                                              #  88    0x7eed8  1      OPC=nop             
  nop                                                              #  89    0x7eed9  1      OPC=nop             
  nop                                                              #  90    0x7eeda  1      OPC=nop             
  nop                                                              #  91    0x7eedb  1      OPC=nop             
  nop                                                              #  92    0x7eedc  1      OPC=nop             
  nop                                                              #  93    0x7eedd  1      OPC=nop             
  nop                                                              #  94    0x7eede  1      OPC=nop             
  nop                                                              #  95    0x7eedf  1      OPC=nop             
  nop                                                              #  96    0x7eee0  1      OPC=nop             
  nop                                                              #  97    0x7eee1  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0x7eee2  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb0EEC2Ej, .-_ZNSt10moneypunctIcLb0EEC2Ej

