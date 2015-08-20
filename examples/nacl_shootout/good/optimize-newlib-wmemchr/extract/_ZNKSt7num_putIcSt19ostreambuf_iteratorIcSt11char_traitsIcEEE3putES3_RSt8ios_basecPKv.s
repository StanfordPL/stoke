  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPKv
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPKv, @function

#! file-offset 0xb8140
#! rip-offset  0x78140
#! capacity    96 bytes

# Text                                                                                   #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPKv:  #        0x78140  0      OPC=<label>         
  movl %edi, %edi                                                                        #  1     0x78140  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                        #  2     0x78142  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                        #  3     0x78145  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                        #  4     0x78148  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                        #  5     0x7814a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                               #  6     0x7814c  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                       #  7     0x78150  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                        #  8     0x78153  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax                                                           #  9     0x78155  5      OPC=movl_r32_m32    
  nop                                                                                    #  10    0x7815a  1      OPC=nop             
  nop                                                                                    #  11    0x7815b  1      OPC=nop             
  nop                                                                                    #  12    0x7815c  1      OPC=nop             
  nop                                                                                    #  13    0x7815d  1      OPC=nop             
  nop                                                                                    #  14    0x7815e  1      OPC=nop             
  nop                                                                                    #  15    0x7815f  1      OPC=nop             
  nop                                                                                    #  16    0x78160  1      OPC=nop             
  nop                                                                                    #  17    0x78161  1      OPC=nop             
  nop                                                                                    #  18    0x78162  1      OPC=nop             
  nop                                                                                    #  19    0x78163  1      OPC=nop             
  nop                                                                                    #  20    0x78164  1      OPC=nop             
  nop                                                                                    #  21    0x78165  1      OPC=nop             
  nop                                                                                    #  22    0x78166  1      OPC=nop             
  nop                                                                                    #  23    0x78167  1      OPC=nop             
  nop                                                                                    #  24    0x78168  1      OPC=nop             
  nop                                                                                    #  25    0x78169  1      OPC=nop             
  nop                                                                                    #  26    0x7816a  1      OPC=nop             
  nop                                                                                    #  27    0x7816b  1      OPC=nop             
  nop                                                                                    #  28    0x7816c  1      OPC=nop             
  nop                                                                                    #  29    0x7816d  1      OPC=nop             
  nop                                                                                    #  30    0x7816e  1      OPC=nop             
  nop                                                                                    #  31    0x7816f  1      OPC=nop             
  nop                                                                                    #  32    0x78170  1      OPC=nop             
  nop                                                                                    #  33    0x78171  1      OPC=nop             
  nop                                                                                    #  34    0x78172  1      OPC=nop             
  nop                                                                                    #  35    0x78173  1      OPC=nop             
  nop                                                                                    #  36    0x78174  1      OPC=nop             
  nop                                                                                    #  37    0x78175  1      OPC=nop             
  nop                                                                                    #  38    0x78176  1      OPC=nop             
  nop                                                                                    #  39    0x78177  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                 #  40    0x78178  6      OPC=andl_r32_imm32  
  nop                                                                                    #  41    0x7817e  1      OPC=nop             
  nop                                                                                    #  42    0x7817f  1      OPC=nop             
  nop                                                                                    #  43    0x78180  1      OPC=nop             
  addq %r15, %rax                                                                        #  44    0x78181  3      OPC=addq_r64_r64    
  callq %rax                                                                             #  45    0x78184  2      OPC=callq_r64       
  addl $0x8, %esp                                                                        #  46    0x78186  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                        #  47    0x78189  3      OPC=addq_r64_r64    
  popq %r11                                                                              #  48    0x7818c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                #  49    0x7818e  7      OPC=andl_r32_imm32  
  nop                                                                                    #  50    0x78195  1      OPC=nop             
  nop                                                                                    #  51    0x78196  1      OPC=nop             
  nop                                                                                    #  52    0x78197  1      OPC=nop             
  nop                                                                                    #  53    0x78198  1      OPC=nop             
  addq %r15, %r11                                                                        #  54    0x78199  3      OPC=addq_r64_r64    
  jmpq %r11                                                                              #  55    0x7819c  3      OPC=jmpq_r64        
  nop                                                                                    #  56    0x7819f  1      OPC=nop             
  nop                                                                                    #  57    0x781a0  1      OPC=nop             
  nop                                                                                    #  58    0x781a1  1      OPC=nop             
  nop                                                                                    #  59    0x781a2  1      OPC=nop             
  nop                                                                                    #  60    0x781a3  1      OPC=nop             
  nop                                                                                    #  61    0x781a4  1      OPC=nop             
  nop                                                                                    #  62    0x781a5  1      OPC=nop             
  nop                                                                                    #  63    0x781a6  1      OPC=nop             
  nop                                                                                    #  64    0x781a7  1      OPC=nop             
  nop                                                                                    #  65    0x781a8  1      OPC=nop             
  nop                                                                                    #  66    0x781a9  1      OPC=nop             
  nop                                                                                    #  67    0x781aa  1      OPC=nop             
  nop                                                                                    #  68    0x781ab  1      OPC=nop             
  nop                                                                                    #  69    0x781ac  1      OPC=nop             
                                                                                                                                      
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPKv, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPKv

