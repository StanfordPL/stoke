  .text
  .globl ClearBenchmarks
  .type ClearBenchmarks, @function

#! file-offset 0x6a440
#! rip-offset  0x2a440
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.ClearBenchmarks:              #        0x2a440  0      OPC=<label>         
  pushq %r12                   #  1     0x2a440  2      OPC=pushq_r64_1     
  pushq %rbx                   #  2     0x2a442  1      OPC=pushq_r64_1     
  subl $0x8, %esp              #  3     0x2a443  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  4     0x2a446  3      OPC=addq_r64_r64    
  movl 0x10046d31(%rip), %eax  #  5     0x2a449  6      OPC=movl_r32_m32    
  testl %eax, %eax             #  6     0x2a44f  2      OPC=testl_r32_r32   
  jle .L_2a4a0                 #  7     0x2a451  2      OPC=jle_label       
  movl $0x100711a0, %r12d      #  8     0x2a453  6      OPC=movl_r32_imm32  
  xorl %ebx, %ebx              #  9     0x2a459  2      OPC=xorl_r32_r32    
  nop                          #  10    0x2a45b  1      OPC=nop             
  nop                          #  11    0x2a45c  1      OPC=nop             
  nop                          #  12    0x2a45d  1      OPC=nop             
  nop                          #  13    0x2a45e  1      OPC=nop             
  nop                          #  14    0x2a45f  1      OPC=nop             
.L_2a460:                      #        0x2a460  0      OPC=<label>         
  movl %r12d, %eax             #  15    0x2a460  3      OPC=movl_r32_r32    
  movl %eax, %eax              #  16    0x2a463  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi     #  17    0x2a465  4      OPC=movl_r32_m32    
  nop                          #  18    0x2a469  1      OPC=nop             
  nop                          #  19    0x2a46a  1      OPC=nop             
  nop                          #  20    0x2a46b  1      OPC=nop             
  nop                          #  21    0x2a46c  1      OPC=nop             
  nop                          #  22    0x2a46d  1      OPC=nop             
  nop                          #  23    0x2a46e  1      OPC=nop             
  nop                          #  24    0x2a46f  1      OPC=nop             
  nop                          #  25    0x2a470  1      OPC=nop             
  nop                          #  26    0x2a471  1      OPC=nop             
  nop                          #  27    0x2a472  1      OPC=nop             
  nop                          #  28    0x2a473  1      OPC=nop             
  nop                          #  29    0x2a474  1      OPC=nop             
  nop                          #  30    0x2a475  1      OPC=nop             
  nop                          #  31    0x2a476  1      OPC=nop             
  nop                          #  32    0x2a477  1      OPC=nop             
  nop                          #  33    0x2a478  1      OPC=nop             
  nop                          #  34    0x2a479  1      OPC=nop             
  nop                          #  35    0x2a47a  1      OPC=nop             
  callq .free                  #  36    0x2a47b  5      OPC=callq_label     
  addl $0x1, %ebx              #  37    0x2a480  3      OPC=addl_r32_imm8   
  addl $0x18, %r12d            #  38    0x2a483  4      OPC=addl_r32_imm8   
  cmpl %ebx, 0x10046cf3(%rip)  #  39    0x2a487  6      OPC=cmpl_m32_r32    
  jg .L_2a460                  #  40    0x2a48d  2      OPC=jg_label        
  xchgw %ax, %ax               #  41    0x2a48f  2      OPC=xchgw_ax_r16    
  nop                          #  42    0x2a491  1      OPC=nop             
  nop                          #  43    0x2a492  1      OPC=nop             
  nop                          #  44    0x2a493  1      OPC=nop             
  nop                          #  45    0x2a494  1      OPC=nop             
  nop                          #  46    0x2a495  1      OPC=nop             
  nop                          #  47    0x2a496  1      OPC=nop             
  nop                          #  48    0x2a497  1      OPC=nop             
  nop                          #  49    0x2a498  1      OPC=nop             
  nop                          #  50    0x2a499  1      OPC=nop             
  nop                          #  51    0x2a49a  1      OPC=nop             
  nop                          #  52    0x2a49b  1      OPC=nop             
  nop                          #  53    0x2a49c  1      OPC=nop             
  nop                          #  54    0x2a49d  1      OPC=nop             
  nop                          #  55    0x2a49e  1      OPC=nop             
  nop                          #  56    0x2a49f  1      OPC=nop             
.L_2a4a0:                      #        0x2a4a0  0      OPC=<label>         
  movl $0x0, 0x10046cd6(%rip)  #  57    0x2a4a0  10     OPC=movl_m32_imm32  
  addl $0x8, %esp              #  58    0x2a4aa  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  59    0x2a4ad  3      OPC=addq_r64_r64    
  popq %rbx                    #  60    0x2a4b0  1      OPC=popq_r64_1      
  popq %r12                    #  61    0x2a4b1  2      OPC=popq_r64_1      
  popq %r11                    #  62    0x2a4b3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  63    0x2a4b5  7      OPC=andl_r32_imm32  
  nop                          #  64    0x2a4bc  1      OPC=nop             
  nop                          #  65    0x2a4bd  1      OPC=nop             
  nop                          #  66    0x2a4be  1      OPC=nop             
  nop                          #  67    0x2a4bf  1      OPC=nop             
  addq %r15, %r11              #  68    0x2a4c0  3      OPC=addq_r64_r64    
  jmpq %r11                    #  69    0x2a4c3  3      OPC=jmpq_r64        
  nop                          #  70    0x2a4c6  1      OPC=nop             
                                                                            
.size ClearBenchmarks, .-ClearBenchmarks

