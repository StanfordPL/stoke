  .text
  .globl _ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE
  .type _ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE, @function

#! file-offset 0xdde40
#! rip-offset  0x9de40
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE:                            #        0x9de40  0      OPC=<label>         
  movl %esi, %eax                                                              #  1     0x9de40  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x9de42  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x9de45  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x9de48  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  5     0x9de4a  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx                                                     #  6     0x9de4c  4      OPC=movl_r32_m32    
  movl %edx, %esi                                                              #  7     0x9de50  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  8     0x9de52  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax                                                  #  9     0x9de54  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  10    0x9de59  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdi,1)                                                     #  11    0x9de5b  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x9de5f  1      OPC=nop             
  subl $0xc, %ecx                                                              #  13    0x9de60  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx                                                              #  14    0x9de63  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %edx                                                     #  15    0x9de65  4      OPC=movl_r32_m32    
  addl %edi, %edx                                                              #  16    0x9de69  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                              #  17    0x9de6b  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdx,1)                                                     #  18    0x9de6d  4      OPC=movl_m32_r32    
  movl %edi, %edi                                                              #  19    0x9de71  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  20    0x9de73  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  21    0x9de77  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  22    0x9de7a  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  23    0x9de7c  4      OPC=addl_r32_m32    
  nop                                                                          #  24    0x9de80  1      OPC=nop             
  nop                                                                          #  25    0x9de81  1      OPC=nop             
  nop                                                                          #  26    0x9de82  1      OPC=nop             
  nop                                                                          #  27    0x9de83  1      OPC=nop             
  nop                                                                          #  28    0x9de84  1      OPC=nop             
  nop                                                                          #  29    0x9de85  1      OPC=nop             
  nop                                                                          #  30    0x9de86  1      OPC=nop             
  nop                                                                          #  31    0x9de87  1      OPC=nop             
  nop                                                                          #  32    0x9de88  1      OPC=nop             
  nop                                                                          #  33    0x9de89  1      OPC=nop             
  nop                                                                          #  34    0x9de8a  1      OPC=nop             
  nop                                                                          #  35    0x9de8b  1      OPC=nop             
  nop                                                                          #  36    0x9de8c  1      OPC=nop             
  nop                                                                          #  37    0x9de8d  1      OPC=nop             
  nop                                                                          #  38    0x9de8e  1      OPC=nop             
  nop                                                                          #  39    0x9de8f  1      OPC=nop             
  nop                                                                          #  40    0x9de90  1      OPC=nop             
  nop                                                                          #  41    0x9de91  1      OPC=nop             
  nop                                                                          #  42    0x9de92  1      OPC=nop             
  nop                                                                          #  43    0x9de93  1      OPC=nop             
  nop                                                                          #  44    0x9de94  1      OPC=nop             
  nop                                                                          #  45    0x9de95  1      OPC=nop             
  nop                                                                          #  46    0x9de96  1      OPC=nop             
  nop                                                                          #  47    0x9de97  1      OPC=nop             
  nop                                                                          #  48    0x9de98  1      OPC=nop             
  nop                                                                          #  49    0x9de99  1      OPC=nop             
  nop                                                                          #  50    0x9de9a  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E  #  51    0x9de9b  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  52    0x9dea0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  53    0x9dea3  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  54    0x9dea6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  55    0x9dea8  7      OPC=andl_r32_imm32  
  nop                                                                          #  56    0x9deaf  1      OPC=nop             
  nop                                                                          #  57    0x9deb0  1      OPC=nop             
  nop                                                                          #  58    0x9deb1  1      OPC=nop             
  nop                                                                          #  59    0x9deb2  1      OPC=nop             
  addq %r15, %r11                                                              #  60    0x9deb3  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  61    0x9deb6  3      OPC=jmpq_r64        
  nop                                                                          #  62    0x9deb9  1      OPC=nop             
  nop                                                                          #  63    0x9deba  1      OPC=nop             
  nop                                                                          #  64    0x9debb  1      OPC=nop             
  nop                                                                          #  65    0x9debc  1      OPC=nop             
  nop                                                                          #  66    0x9debd  1      OPC=nop             
  nop                                                                          #  67    0x9debe  1      OPC=nop             
  nop                                                                          #  68    0x9debf  1      OPC=nop             
  nop                                                                          #  69    0x9dec0  1      OPC=nop             
  nop                                                                          #  70    0x9dec1  1      OPC=nop             
  nop                                                                          #  71    0x9dec2  1      OPC=nop             
  nop                                                                          #  72    0x9dec3  1      OPC=nop             
  nop                                                                          #  73    0x9dec4  1      OPC=nop             
  nop                                                                          #  74    0x9dec5  1      OPC=nop             
  nop                                                                          #  75    0x9dec6  1      OPC=nop             
  movl %eax, %edi                                                              #  76    0x9dec7  2      OPC=movl_r32_r32    
  nop                                                                          #  77    0x9dec9  1      OPC=nop             
  nop                                                                          #  78    0x9deca  1      OPC=nop             
  nop                                                                          #  79    0x9decb  1      OPC=nop             
  nop                                                                          #  80    0x9decc  1      OPC=nop             
  nop                                                                          #  81    0x9decd  1      OPC=nop             
  nop                                                                          #  82    0x9dece  1      OPC=nop             
  nop                                                                          #  83    0x9decf  1      OPC=nop             
  nop                                                                          #  84    0x9ded0  1      OPC=nop             
  nop                                                                          #  85    0x9ded1  1      OPC=nop             
  nop                                                                          #  86    0x9ded2  1      OPC=nop             
  nop                                                                          #  87    0x9ded3  1      OPC=nop             
  nop                                                                          #  88    0x9ded4  1      OPC=nop             
  nop                                                                          #  89    0x9ded5  1      OPC=nop             
  nop                                                                          #  90    0x9ded6  1      OPC=nop             
  nop                                                                          #  91    0x9ded7  1      OPC=nop             
  nop                                                                          #  92    0x9ded8  1      OPC=nop             
  nop                                                                          #  93    0x9ded9  1      OPC=nop             
  nop                                                                          #  94    0x9deda  1      OPC=nop             
  nop                                                                          #  95    0x9dedb  1      OPC=nop             
  nop                                                                          #  96    0x9dedc  1      OPC=nop             
  nop                                                                          #  97    0x9dedd  1      OPC=nop             
  nop                                                                          #  98    0x9dede  1      OPC=nop             
  nop                                                                          #  99    0x9dedf  1      OPC=nop             
  nop                                                                          #  100   0x9dee0  1      OPC=nop             
  nop                                                                          #  101   0x9dee1  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  102   0x9dee2  5      OPC=callq_label     
                                                                                                                            
.size _ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE, .-_ZNSoC2EPSt15basic_streambufIcSt11char_traitsIcEE

