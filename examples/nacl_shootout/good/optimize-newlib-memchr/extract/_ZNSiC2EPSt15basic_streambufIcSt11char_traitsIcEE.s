  .text
  .globl _ZNSiC2EPSt15basic_streambufIcSt11char_traitsIcEE
  .type _ZNSiC2EPSt15basic_streambufIcSt11char_traitsIcEE, @function

#! file-offset 0xa83a0
#! rip-offset  0x683a0
#! capacity    160 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSiC2EPSt15basic_streambufIcSt11char_traitsIcEE:                            #        0x683a0  0      OPC=<label>         
  movl %esi, %eax                                                              #  1     0x683a0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                              #  2     0x683a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  3     0x683a5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                              #  4     0x683a8  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  5     0x683aa  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx                                                     #  6     0x683ac  4      OPC=movl_r32_m32    
  movl %edx, %esi                                                              #  7     0x683b0  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                              #  8     0x683b2  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax                                                  #  9     0x683b4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  10    0x683b9  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdi,1)                                                     #  11    0x683bb  4      OPC=movl_m32_r32    
  nop                                                                          #  12    0x683bf  1      OPC=nop             
  subl $0xc, %ecx                                                              #  13    0x683c0  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx                                                              #  14    0x683c3  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %edx                                                     #  15    0x683c5  4      OPC=movl_r32_m32    
  movl %edi, %edi                                                              #  16    0x683c9  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)                                                  #  17    0x683cb  9      OPC=movl_m32_imm32  
  addl %edi, %edx                                                              #  18    0x683d4  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                              #  19    0x683d6  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdx,1)                                                     #  20    0x683d8  4      OPC=movl_m32_r32    
  nop                                                                          #  21    0x683dc  1      OPC=nop             
  nop                                                                          #  22    0x683dd  1      OPC=nop             
  nop                                                                          #  23    0x683de  1      OPC=nop             
  nop                                                                          #  24    0x683df  1      OPC=nop             
  movl %edi, %edi                                                              #  25    0x683e0  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                     #  26    0x683e2  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                              #  27    0x683e6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                              #  28    0x683e9  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                                                     #  29    0x683eb  4      OPC=addl_r32_m32    
  nop                                                                          #  30    0x683ef  1      OPC=nop             
  nop                                                                          #  31    0x683f0  1      OPC=nop             
  nop                                                                          #  32    0x683f1  1      OPC=nop             
  nop                                                                          #  33    0x683f2  1      OPC=nop             
  nop                                                                          #  34    0x683f3  1      OPC=nop             
  nop                                                                          #  35    0x683f4  1      OPC=nop             
  nop                                                                          #  36    0x683f5  1      OPC=nop             
  nop                                                                          #  37    0x683f6  1      OPC=nop             
  nop                                                                          #  38    0x683f7  1      OPC=nop             
  nop                                                                          #  39    0x683f8  1      OPC=nop             
  nop                                                                          #  40    0x683f9  1      OPC=nop             
  nop                                                                          #  41    0x683fa  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E  #  42    0x683fb  5      OPC=callq_label     
  addl $0x8, %esp                                                              #  43    0x68400  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  44    0x68403  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  45    0x68406  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  46    0x68408  7      OPC=andl_r32_imm32  
  nop                                                                          #  47    0x6840f  1      OPC=nop             
  nop                                                                          #  48    0x68410  1      OPC=nop             
  nop                                                                          #  49    0x68411  1      OPC=nop             
  nop                                                                          #  50    0x68412  1      OPC=nop             
  addq %r15, %r11                                                              #  51    0x68413  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  52    0x68416  3      OPC=jmpq_r64        
  nop                                                                          #  53    0x68419  1      OPC=nop             
  nop                                                                          #  54    0x6841a  1      OPC=nop             
  nop                                                                          #  55    0x6841b  1      OPC=nop             
  nop                                                                          #  56    0x6841c  1      OPC=nop             
  nop                                                                          #  57    0x6841d  1      OPC=nop             
  nop                                                                          #  58    0x6841e  1      OPC=nop             
  nop                                                                          #  59    0x6841f  1      OPC=nop             
  nop                                                                          #  60    0x68420  1      OPC=nop             
  nop                                                                          #  61    0x68421  1      OPC=nop             
  nop                                                                          #  62    0x68422  1      OPC=nop             
  nop                                                                          #  63    0x68423  1      OPC=nop             
  nop                                                                          #  64    0x68424  1      OPC=nop             
  nop                                                                          #  65    0x68425  1      OPC=nop             
  nop                                                                          #  66    0x68426  1      OPC=nop             
  movl %eax, %edi                                                              #  67    0x68427  2      OPC=movl_r32_r32    
  nop                                                                          #  68    0x68429  1      OPC=nop             
  nop                                                                          #  69    0x6842a  1      OPC=nop             
  nop                                                                          #  70    0x6842b  1      OPC=nop             
  nop                                                                          #  71    0x6842c  1      OPC=nop             
  nop                                                                          #  72    0x6842d  1      OPC=nop             
  nop                                                                          #  73    0x6842e  1      OPC=nop             
  nop                                                                          #  74    0x6842f  1      OPC=nop             
  nop                                                                          #  75    0x68430  1      OPC=nop             
  nop                                                                          #  76    0x68431  1      OPC=nop             
  nop                                                                          #  77    0x68432  1      OPC=nop             
  nop                                                                          #  78    0x68433  1      OPC=nop             
  nop                                                                          #  79    0x68434  1      OPC=nop             
  nop                                                                          #  80    0x68435  1      OPC=nop             
  nop                                                                          #  81    0x68436  1      OPC=nop             
  nop                                                                          #  82    0x68437  1      OPC=nop             
  nop                                                                          #  83    0x68438  1      OPC=nop             
  nop                                                                          #  84    0x68439  1      OPC=nop             
  nop                                                                          #  85    0x6843a  1      OPC=nop             
  nop                                                                          #  86    0x6843b  1      OPC=nop             
  nop                                                                          #  87    0x6843c  1      OPC=nop             
  nop                                                                          #  88    0x6843d  1      OPC=nop             
  nop                                                                          #  89    0x6843e  1      OPC=nop             
  nop                                                                          #  90    0x6843f  1      OPC=nop             
  nop                                                                          #  91    0x68440  1      OPC=nop             
  nop                                                                          #  92    0x68441  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  93    0x68442  5      OPC=callq_label     
                                                                                                                            
.size _ZNSiC2EPSt15basic_streambufIcSt11char_traitsIcEE, .-_ZNSiC2EPSt15basic_streambufIcSt11char_traitsIcEE

