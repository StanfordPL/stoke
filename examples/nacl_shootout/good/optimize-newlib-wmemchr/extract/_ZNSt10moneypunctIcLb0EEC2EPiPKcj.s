  .text
  .globl _ZNSt10moneypunctIcLb0EEC2EPiPKcj
  .type _ZNSt10moneypunctIcLb0EEC2EPiPKcj, @function

#! file-offset 0xbebc0
#! rip-offset  0x7ebc0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb0EEC2EPiPKcj:                                #        0x7ebc0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7ebc0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7ebc1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7ebc3  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                  #  4     0x7ebc5  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                  #  5     0x7ebc7  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  6     0x7ebc9  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  7     0x7ebcb  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  8     0x7ebce  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                                                 #  9     0x7ebd1  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  10    0x7ebd3  2      OPC=movl_r32_r32    
  movl $0x1003ae48, (%r15,%rbx,1)                                  #  11    0x7ebd5  8      OPC=movl_m32_imm32  
  setne %al                                                        #  12    0x7ebdd  3      OPC=setne_r8        
  movl %ebx, %ebx                                                  #  13    0x7ebe0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  14    0x7ebe2  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                  #  15    0x7ebeb  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  16    0x7ebed  5      OPC=movl_m32_r32    
  nop                                                              #  17    0x7ebf2  1      OPC=nop             
  nop                                                              #  18    0x7ebf3  1      OPC=nop             
  nop                                                              #  19    0x7ebf4  1      OPC=nop             
  nop                                                              #  20    0x7ebf5  1      OPC=nop             
  nop                                                              #  21    0x7ebf6  1      OPC=nop             
  nop                                                              #  22    0x7ebf7  1      OPC=nop             
  nop                                                              #  23    0x7ebf8  1      OPC=nop             
  nop                                                              #  24    0x7ebf9  1      OPC=nop             
  nop                                                              #  25    0x7ebfa  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb0EE24_M_initialize_moneypunctEPiPKc  #  26    0x7ebfb  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0x7ec00  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0x7ec03  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0x7ec06  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0x7ec07  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0x7ec09  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0x7ec10  1      OPC=nop             
  nop                                                              #  33    0x7ec11  1      OPC=nop             
  nop                                                              #  34    0x7ec12  1      OPC=nop             
  nop                                                              #  35    0x7ec13  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0x7ec14  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0x7ec17  3      OPC=jmpq_r64        
  nop                                                              #  38    0x7ec1a  1      OPC=nop             
  nop                                                              #  39    0x7ec1b  1      OPC=nop             
  nop                                                              #  40    0x7ec1c  1      OPC=nop             
  nop                                                              #  41    0x7ec1d  1      OPC=nop             
  nop                                                              #  42    0x7ec1e  1      OPC=nop             
  nop                                                              #  43    0x7ec1f  1      OPC=nop             
  nop                                                              #  44    0x7ec20  1      OPC=nop             
  nop                                                              #  45    0x7ec21  1      OPC=nop             
  nop                                                              #  46    0x7ec22  1      OPC=nop             
  nop                                                              #  47    0x7ec23  1      OPC=nop             
  nop                                                              #  48    0x7ec24  1      OPC=nop             
  nop                                                              #  49    0x7ec25  1      OPC=nop             
  nop                                                              #  50    0x7ec26  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0x7ec27  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0x7ec29  4      OPC=movl_m32_r32    
  nop                                                              #  53    0x7ec2d  1      OPC=nop             
  nop                                                              #  54    0x7ec2e  1      OPC=nop             
  nop                                                              #  55    0x7ec2f  1      OPC=nop             
  nop                                                              #  56    0x7ec30  1      OPC=nop             
  nop                                                              #  57    0x7ec31  1      OPC=nop             
  nop                                                              #  58    0x7ec32  1      OPC=nop             
  nop                                                              #  59    0x7ec33  1      OPC=nop             
  nop                                                              #  60    0x7ec34  1      OPC=nop             
  nop                                                              #  61    0x7ec35  1      OPC=nop             
  nop                                                              #  62    0x7ec36  1      OPC=nop             
  nop                                                              #  63    0x7ec37  1      OPC=nop             
  nop                                                              #  64    0x7ec38  1      OPC=nop             
  nop                                                              #  65    0x7ec39  1      OPC=nop             
  nop                                                              #  66    0x7ec3a  1      OPC=nop             
  nop                                                              #  67    0x7ec3b  1      OPC=nop             
  nop                                                              #  68    0x7ec3c  1      OPC=nop             
  nop                                                              #  69    0x7ec3d  1      OPC=nop             
  nop                                                              #  70    0x7ec3e  1      OPC=nop             
  nop                                                              #  71    0x7ec3f  1      OPC=nop             
  nop                                                              #  72    0x7ec40  1      OPC=nop             
  nop                                                              #  73    0x7ec41  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0x7ec42  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0x7ec47  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0x7ec4b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0x7ec4d  1      OPC=nop             
  nop                                                              #  78    0x7ec4e  1      OPC=nop             
  nop                                                              #  79    0x7ec4f  1      OPC=nop             
  nop                                                              #  80    0x7ec50  1      OPC=nop             
  nop                                                              #  81    0x7ec51  1      OPC=nop             
  nop                                                              #  82    0x7ec52  1      OPC=nop             
  nop                                                              #  83    0x7ec53  1      OPC=nop             
  nop                                                              #  84    0x7ec54  1      OPC=nop             
  nop                                                              #  85    0x7ec55  1      OPC=nop             
  nop                                                              #  86    0x7ec56  1      OPC=nop             
  nop                                                              #  87    0x7ec57  1      OPC=nop             
  nop                                                              #  88    0x7ec58  1      OPC=nop             
  nop                                                              #  89    0x7ec59  1      OPC=nop             
  nop                                                              #  90    0x7ec5a  1      OPC=nop             
  nop                                                              #  91    0x7ec5b  1      OPC=nop             
  nop                                                              #  92    0x7ec5c  1      OPC=nop             
  nop                                                              #  93    0x7ec5d  1      OPC=nop             
  nop                                                              #  94    0x7ec5e  1      OPC=nop             
  nop                                                              #  95    0x7ec5f  1      OPC=nop             
  nop                                                              #  96    0x7ec60  1      OPC=nop             
  nop                                                              #  97    0x7ec61  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0x7ec62  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb0EEC2EPiPKcj, .-_ZNSt10moneypunctIcLb0EEC2EPiPKcj

