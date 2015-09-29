  .text
  .globl _ZNSt10moneypunctIcLb0EEC1Ej
  .type _ZNSt10moneypunctIcLb0EEC1Ej, @function

#! file-offset 0xbf4c0
#! rip-offset  0x7f4c0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb0EEC1Ej:                                     #        0x7f4c0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7f4c0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7f4c1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7f4c3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0x7f4c5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0x7f4c7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0x7f4ca  3      OPC=addq_r64_r64    
  testl %esi, %esi                                                 #  7     0x7f4cd  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0x7f4cf  2      OPC=movl_r32_r32    
  movl $0x1003ae48, (%r15,%rbx,1)                                  #  9     0x7f4d1  8      OPC=movl_m32_imm32  
  setne %al                                                        #  10    0x7f4d9  3      OPC=setne_r8        
  nop                                                              #  11    0x7f4dc  1      OPC=nop             
  nop                                                              #  12    0x7f4dd  1      OPC=nop             
  nop                                                              #  13    0x7f4de  1      OPC=nop             
  nop                                                              #  14    0x7f4df  1      OPC=nop             
  movl %ebx, %ebx                                                  #  15    0x7f4e0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  16    0x7f4e2  9      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  17    0x7f4eb  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  18    0x7f4ed  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  19    0x7f4ef  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  20    0x7f4f4  2      OPC=xorl_r32_r32    
  nop                                                              #  21    0x7f4f6  1      OPC=nop             
  nop                                                              #  22    0x7f4f7  1      OPC=nop             
  nop                                                              #  23    0x7f4f8  1      OPC=nop             
  nop                                                              #  24    0x7f4f9  1      OPC=nop             
  nop                                                              #  25    0x7f4fa  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb0EE24_M_initialize_moneypunctEPiPKc  #  26    0x7f4fb  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0x7f500  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0x7f503  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0x7f506  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0x7f507  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0x7f509  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0x7f510  1      OPC=nop             
  nop                                                              #  33    0x7f511  1      OPC=nop             
  nop                                                              #  34    0x7f512  1      OPC=nop             
  nop                                                              #  35    0x7f513  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0x7f514  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0x7f517  3      OPC=jmpq_r64        
  nop                                                              #  38    0x7f51a  1      OPC=nop             
  nop                                                              #  39    0x7f51b  1      OPC=nop             
  nop                                                              #  40    0x7f51c  1      OPC=nop             
  nop                                                              #  41    0x7f51d  1      OPC=nop             
  nop                                                              #  42    0x7f51e  1      OPC=nop             
  nop                                                              #  43    0x7f51f  1      OPC=nop             
  nop                                                              #  44    0x7f520  1      OPC=nop             
  nop                                                              #  45    0x7f521  1      OPC=nop             
  nop                                                              #  46    0x7f522  1      OPC=nop             
  nop                                                              #  47    0x7f523  1      OPC=nop             
  nop                                                              #  48    0x7f524  1      OPC=nop             
  nop                                                              #  49    0x7f525  1      OPC=nop             
  nop                                                              #  50    0x7f526  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0x7f527  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0x7f529  4      OPC=movl_m32_r32    
  nop                                                              #  53    0x7f52d  1      OPC=nop             
  nop                                                              #  54    0x7f52e  1      OPC=nop             
  nop                                                              #  55    0x7f52f  1      OPC=nop             
  nop                                                              #  56    0x7f530  1      OPC=nop             
  nop                                                              #  57    0x7f531  1      OPC=nop             
  nop                                                              #  58    0x7f532  1      OPC=nop             
  nop                                                              #  59    0x7f533  1      OPC=nop             
  nop                                                              #  60    0x7f534  1      OPC=nop             
  nop                                                              #  61    0x7f535  1      OPC=nop             
  nop                                                              #  62    0x7f536  1      OPC=nop             
  nop                                                              #  63    0x7f537  1      OPC=nop             
  nop                                                              #  64    0x7f538  1      OPC=nop             
  nop                                                              #  65    0x7f539  1      OPC=nop             
  nop                                                              #  66    0x7f53a  1      OPC=nop             
  nop                                                              #  67    0x7f53b  1      OPC=nop             
  nop                                                              #  68    0x7f53c  1      OPC=nop             
  nop                                                              #  69    0x7f53d  1      OPC=nop             
  nop                                                              #  70    0x7f53e  1      OPC=nop             
  nop                                                              #  71    0x7f53f  1      OPC=nop             
  nop                                                              #  72    0x7f540  1      OPC=nop             
  nop                                                              #  73    0x7f541  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0x7f542  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0x7f547  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0x7f54b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0x7f54d  1      OPC=nop             
  nop                                                              #  78    0x7f54e  1      OPC=nop             
  nop                                                              #  79    0x7f54f  1      OPC=nop             
  nop                                                              #  80    0x7f550  1      OPC=nop             
  nop                                                              #  81    0x7f551  1      OPC=nop             
  nop                                                              #  82    0x7f552  1      OPC=nop             
  nop                                                              #  83    0x7f553  1      OPC=nop             
  nop                                                              #  84    0x7f554  1      OPC=nop             
  nop                                                              #  85    0x7f555  1      OPC=nop             
  nop                                                              #  86    0x7f556  1      OPC=nop             
  nop                                                              #  87    0x7f557  1      OPC=nop             
  nop                                                              #  88    0x7f558  1      OPC=nop             
  nop                                                              #  89    0x7f559  1      OPC=nop             
  nop                                                              #  90    0x7f55a  1      OPC=nop             
  nop                                                              #  91    0x7f55b  1      OPC=nop             
  nop                                                              #  92    0x7f55c  1      OPC=nop             
  nop                                                              #  93    0x7f55d  1      OPC=nop             
  nop                                                              #  94    0x7f55e  1      OPC=nop             
  nop                                                              #  95    0x7f55f  1      OPC=nop             
  nop                                                              #  96    0x7f560  1      OPC=nop             
  nop                                                              #  97    0x7f561  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0x7f562  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb0EEC1Ej, .-_ZNSt10moneypunctIcLb0EEC1Ej

