  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPKv
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPKv, @function

#! file-offset 0xb8860
#! rip-offset  0x78860
#! capacity    96 bytes

# Text                                                                                   #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPKv:  #        0x78860  0      OPC=<label>         
  movl %edi, %edi                                                                        #  1     0x78860  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                        #  2     0x78862  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                        #  3     0x78865  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                        #  4     0x78868  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                        #  5     0x7886a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                               #  6     0x7886c  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                       #  7     0x78870  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                        #  8     0x78873  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax                                                           #  9     0x78875  5      OPC=movl_r32_m32    
  nop                                                                                    #  10    0x7887a  1      OPC=nop             
  nop                                                                                    #  11    0x7887b  1      OPC=nop             
  nop                                                                                    #  12    0x7887c  1      OPC=nop             
  nop                                                                                    #  13    0x7887d  1      OPC=nop             
  nop                                                                                    #  14    0x7887e  1      OPC=nop             
  nop                                                                                    #  15    0x7887f  1      OPC=nop             
  nop                                                                                    #  16    0x78880  1      OPC=nop             
  nop                                                                                    #  17    0x78881  1      OPC=nop             
  nop                                                                                    #  18    0x78882  1      OPC=nop             
  nop                                                                                    #  19    0x78883  1      OPC=nop             
  nop                                                                                    #  20    0x78884  1      OPC=nop             
  nop                                                                                    #  21    0x78885  1      OPC=nop             
  nop                                                                                    #  22    0x78886  1      OPC=nop             
  nop                                                                                    #  23    0x78887  1      OPC=nop             
  nop                                                                                    #  24    0x78888  1      OPC=nop             
  nop                                                                                    #  25    0x78889  1      OPC=nop             
  nop                                                                                    #  26    0x7888a  1      OPC=nop             
  nop                                                                                    #  27    0x7888b  1      OPC=nop             
  nop                                                                                    #  28    0x7888c  1      OPC=nop             
  nop                                                                                    #  29    0x7888d  1      OPC=nop             
  nop                                                                                    #  30    0x7888e  1      OPC=nop             
  nop                                                                                    #  31    0x7888f  1      OPC=nop             
  nop                                                                                    #  32    0x78890  1      OPC=nop             
  nop                                                                                    #  33    0x78891  1      OPC=nop             
  nop                                                                                    #  34    0x78892  1      OPC=nop             
  nop                                                                                    #  35    0x78893  1      OPC=nop             
  nop                                                                                    #  36    0x78894  1      OPC=nop             
  nop                                                                                    #  37    0x78895  1      OPC=nop             
  nop                                                                                    #  38    0x78896  1      OPC=nop             
  nop                                                                                    #  39    0x78897  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                 #  40    0x78898  6      OPC=andl_r32_imm32  
  nop                                                                                    #  41    0x7889e  1      OPC=nop             
  nop                                                                                    #  42    0x7889f  1      OPC=nop             
  nop                                                                                    #  43    0x788a0  1      OPC=nop             
  addq %r15, %rax                                                                        #  44    0x788a1  3      OPC=addq_r64_r64    
  callq %rax                                                                             #  45    0x788a4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                        #  46    0x788a6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                        #  47    0x788a9  3      OPC=addq_r64_r64    
  popq %r11                                                                              #  48    0x788ac  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                #  49    0x788ae  7      OPC=andl_r32_imm32  
  nop                                                                                    #  50    0x788b5  1      OPC=nop             
  nop                                                                                    #  51    0x788b6  1      OPC=nop             
  nop                                                                                    #  52    0x788b7  1      OPC=nop             
  nop                                                                                    #  53    0x788b8  1      OPC=nop             
  addq %r15, %r11                                                                        #  54    0x788b9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                              #  55    0x788bc  3      OPC=jmpq_r64        
  nop                                                                                    #  56    0x788bf  1      OPC=nop             
  nop                                                                                    #  57    0x788c0  1      OPC=nop             
  nop                                                                                    #  58    0x788c1  1      OPC=nop             
  nop                                                                                    #  59    0x788c2  1      OPC=nop             
  nop                                                                                    #  60    0x788c3  1      OPC=nop             
  nop                                                                                    #  61    0x788c4  1      OPC=nop             
  nop                                                                                    #  62    0x788c5  1      OPC=nop             
  nop                                                                                    #  63    0x788c6  1      OPC=nop             
  nop                                                                                    #  64    0x788c7  1      OPC=nop             
  nop                                                                                    #  65    0x788c8  1      OPC=nop             
  nop                                                                                    #  66    0x788c9  1      OPC=nop             
  nop                                                                                    #  67    0x788ca  1      OPC=nop             
  nop                                                                                    #  68    0x788cb  1      OPC=nop             
  nop                                                                                    #  69    0x788cc  1      OPC=nop             
                                                                                                                                      
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPKv, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPKv

