  .text
  .globl ClearBenchmarks
  .type ClearBenchmarks, @function

#! file-offset 0x6ab60
#! rip-offset  0x2ab60
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.ClearBenchmarks:              #        0x2ab60  0      OPC=<label>         
  pushq %r12                   #  1     0x2ab60  2      OPC=pushq_r64_1     
  pushq %rbx                   #  2     0x2ab62  1      OPC=pushq_r64_1     
  subl $0x8, %esp              #  3     0x2ab63  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  4     0x2ab66  3      OPC=addq_r64_r64    
  movl 0x10046611(%rip), %eax  #  5     0x2ab69  6      OPC=movl_r32_m32    
  testl %eax, %eax             #  6     0x2ab6f  2      OPC=testl_r32_r32   
  jle .L_2abc0                 #  7     0x2ab71  2      OPC=jle_label       
  movl $0x100711a0, %r12d      #  8     0x2ab73  6      OPC=movl_r32_imm32  
  xorl %ebx, %ebx              #  9     0x2ab79  2      OPC=xorl_r32_r32    
  nop                          #  10    0x2ab7b  1      OPC=nop             
  nop                          #  11    0x2ab7c  1      OPC=nop             
  nop                          #  12    0x2ab7d  1      OPC=nop             
  nop                          #  13    0x2ab7e  1      OPC=nop             
  nop                          #  14    0x2ab7f  1      OPC=nop             
.L_2ab80:                      #        0x2ab80  0      OPC=<label>         
  movl %r12d, %eax             #  15    0x2ab80  3      OPC=movl_r32_r32    
  movl %eax, %eax              #  16    0x2ab83  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi     #  17    0x2ab85  4      OPC=movl_r32_m32    
  nop                          #  18    0x2ab89  1      OPC=nop             
  nop                          #  19    0x2ab8a  1      OPC=nop             
  nop                          #  20    0x2ab8b  1      OPC=nop             
  nop                          #  21    0x2ab8c  1      OPC=nop             
  nop                          #  22    0x2ab8d  1      OPC=nop             
  nop                          #  23    0x2ab8e  1      OPC=nop             
  nop                          #  24    0x2ab8f  1      OPC=nop             
  nop                          #  25    0x2ab90  1      OPC=nop             
  nop                          #  26    0x2ab91  1      OPC=nop             
  nop                          #  27    0x2ab92  1      OPC=nop             
  nop                          #  28    0x2ab93  1      OPC=nop             
  nop                          #  29    0x2ab94  1      OPC=nop             
  nop                          #  30    0x2ab95  1      OPC=nop             
  nop                          #  31    0x2ab96  1      OPC=nop             
  nop                          #  32    0x2ab97  1      OPC=nop             
  nop                          #  33    0x2ab98  1      OPC=nop             
  nop                          #  34    0x2ab99  1      OPC=nop             
  nop                          #  35    0x2ab9a  1      OPC=nop             
  callq .free                  #  36    0x2ab9b  5      OPC=callq_label     
  addl $0x1, %ebx              #  37    0x2aba0  3      OPC=addl_r32_imm8   
  addl $0x18, %r12d            #  38    0x2aba3  4      OPC=addl_r32_imm8   
  cmpl %ebx, 0x100465d3(%rip)  #  39    0x2aba7  6      OPC=cmpl_m32_r32    
  jg .L_2ab80                  #  40    0x2abad  2      OPC=jg_label        
  xchgw %ax, %ax               #  41    0x2abaf  2      OPC=xchgw_ax_r16    
  nop                          #  42    0x2abb1  1      OPC=nop             
  nop                          #  43    0x2abb2  1      OPC=nop             
  nop                          #  44    0x2abb3  1      OPC=nop             
  nop                          #  45    0x2abb4  1      OPC=nop             
  nop                          #  46    0x2abb5  1      OPC=nop             
  nop                          #  47    0x2abb6  1      OPC=nop             
  nop                          #  48    0x2abb7  1      OPC=nop             
  nop                          #  49    0x2abb8  1      OPC=nop             
  nop                          #  50    0x2abb9  1      OPC=nop             
  nop                          #  51    0x2abba  1      OPC=nop             
  nop                          #  52    0x2abbb  1      OPC=nop             
  nop                          #  53    0x2abbc  1      OPC=nop             
  nop                          #  54    0x2abbd  1      OPC=nop             
  nop                          #  55    0x2abbe  1      OPC=nop             
  nop                          #  56    0x2abbf  1      OPC=nop             
.L_2abc0:                      #        0x2abc0  0      OPC=<label>         
  movl $0x0, 0x100465b6(%rip)  #  57    0x2abc0  10     OPC=movl_m32_imm32  
  addl $0x8, %esp              #  58    0x2abca  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  59    0x2abcd  3      OPC=addq_r64_r64    
  popq %rbx                    #  60    0x2abd0  1      OPC=popq_r64_1      
  popq %r12                    #  61    0x2abd1  2      OPC=popq_r64_1      
  popq %r11                    #  62    0x2abd3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  63    0x2abd5  7      OPC=andl_r32_imm32  
  nop                          #  64    0x2abdc  1      OPC=nop             
  nop                          #  65    0x2abdd  1      OPC=nop             
  nop                          #  66    0x2abde  1      OPC=nop             
  nop                          #  67    0x2abdf  1      OPC=nop             
  addq %r15, %r11              #  68    0x2abe0  3      OPC=addq_r64_r64    
  jmpq %r11                    #  69    0x2abe3  3      OPC=jmpq_r64        
  nop                          #  70    0x2abe6  1      OPC=nop             
                                                                            
.size ClearBenchmarks, .-ClearBenchmarks

