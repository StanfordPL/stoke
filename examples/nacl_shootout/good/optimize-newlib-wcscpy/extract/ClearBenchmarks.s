  .text
  .globl ClearBenchmarks
  .type ClearBenchmarks, @function

#! file-offset 0x6a140
#! rip-offset  0x2a140
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.ClearBenchmarks:              #        0x2a140  0      OPC=<label>         
  pushq %r12                   #  1     0x2a140  2      OPC=pushq_r64_1     
  pushq %rbx                   #  2     0x2a142  1      OPC=pushq_r64_1     
  subl $0x8, %esp              #  3     0x2a143  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  4     0x2a146  3      OPC=addq_r64_r64    
  movl 0x10047031(%rip), %eax  #  5     0x2a149  6      OPC=movl_r32_m32    
  testl %eax, %eax             #  6     0x2a14f  2      OPC=testl_r32_r32   
  jle .L_2a1a0                 #  7     0x2a151  2      OPC=jle_label       
  movl $0x100711a0, %r12d      #  8     0x2a153  6      OPC=movl_r32_imm32  
  xorl %ebx, %ebx              #  9     0x2a159  2      OPC=xorl_r32_r32    
  nop                          #  10    0x2a15b  1      OPC=nop             
  nop                          #  11    0x2a15c  1      OPC=nop             
  nop                          #  12    0x2a15d  1      OPC=nop             
  nop                          #  13    0x2a15e  1      OPC=nop             
  nop                          #  14    0x2a15f  1      OPC=nop             
.L_2a160:                      #        0x2a160  0      OPC=<label>         
  movl %r12d, %eax             #  15    0x2a160  3      OPC=movl_r32_r32    
  movl %eax, %eax              #  16    0x2a163  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi     #  17    0x2a165  4      OPC=movl_r32_m32    
  nop                          #  18    0x2a169  1      OPC=nop             
  nop                          #  19    0x2a16a  1      OPC=nop             
  nop                          #  20    0x2a16b  1      OPC=nop             
  nop                          #  21    0x2a16c  1      OPC=nop             
  nop                          #  22    0x2a16d  1      OPC=nop             
  nop                          #  23    0x2a16e  1      OPC=nop             
  nop                          #  24    0x2a16f  1      OPC=nop             
  nop                          #  25    0x2a170  1      OPC=nop             
  nop                          #  26    0x2a171  1      OPC=nop             
  nop                          #  27    0x2a172  1      OPC=nop             
  nop                          #  28    0x2a173  1      OPC=nop             
  nop                          #  29    0x2a174  1      OPC=nop             
  nop                          #  30    0x2a175  1      OPC=nop             
  nop                          #  31    0x2a176  1      OPC=nop             
  nop                          #  32    0x2a177  1      OPC=nop             
  nop                          #  33    0x2a178  1      OPC=nop             
  nop                          #  34    0x2a179  1      OPC=nop             
  nop                          #  35    0x2a17a  1      OPC=nop             
  callq .free                  #  36    0x2a17b  5      OPC=callq_label     
  addl $0x1, %ebx              #  37    0x2a180  3      OPC=addl_r32_imm8   
  addl $0x18, %r12d            #  38    0x2a183  4      OPC=addl_r32_imm8   
  cmpl %ebx, 0x10046ff3(%rip)  #  39    0x2a187  6      OPC=cmpl_m32_r32    
  jg .L_2a160                  #  40    0x2a18d  2      OPC=jg_label        
  xchgw %ax, %ax               #  41    0x2a18f  2      OPC=xchgw_ax_r16    
  nop                          #  42    0x2a191  1      OPC=nop             
  nop                          #  43    0x2a192  1      OPC=nop             
  nop                          #  44    0x2a193  1      OPC=nop             
  nop                          #  45    0x2a194  1      OPC=nop             
  nop                          #  46    0x2a195  1      OPC=nop             
  nop                          #  47    0x2a196  1      OPC=nop             
  nop                          #  48    0x2a197  1      OPC=nop             
  nop                          #  49    0x2a198  1      OPC=nop             
  nop                          #  50    0x2a199  1      OPC=nop             
  nop                          #  51    0x2a19a  1      OPC=nop             
  nop                          #  52    0x2a19b  1      OPC=nop             
  nop                          #  53    0x2a19c  1      OPC=nop             
  nop                          #  54    0x2a19d  1      OPC=nop             
  nop                          #  55    0x2a19e  1      OPC=nop             
  nop                          #  56    0x2a19f  1      OPC=nop             
.L_2a1a0:                      #        0x2a1a0  0      OPC=<label>         
  movl $0x0, 0x10046fd6(%rip)  #  57    0x2a1a0  10     OPC=movl_m32_imm32  
  addl $0x8, %esp              #  58    0x2a1aa  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  59    0x2a1ad  3      OPC=addq_r64_r64    
  popq %rbx                    #  60    0x2a1b0  1      OPC=popq_r64_1      
  popq %r12                    #  61    0x2a1b1  2      OPC=popq_r64_1      
  popq %r11                    #  62    0x2a1b3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  63    0x2a1b5  7      OPC=andl_r32_imm32  
  nop                          #  64    0x2a1bc  1      OPC=nop             
  nop                          #  65    0x2a1bd  1      OPC=nop             
  nop                          #  66    0x2a1be  1      OPC=nop             
  nop                          #  67    0x2a1bf  1      OPC=nop             
  addq %r15, %r11              #  68    0x2a1c0  3      OPC=addq_r64_r64    
  jmpq %r11                    #  69    0x2a1c3  3      OPC=jmpq_r64        
  nop                          #  70    0x2a1c6  1      OPC=nop             
                                                                            
.size ClearBenchmarks, .-ClearBenchmarks

