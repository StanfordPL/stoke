  .text
  .globl Milliseconds
  .type Milliseconds, @function

#! file-offset 0x67080
#! rip-offset  0x27080
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.Milliseconds:             #        0x27080  0      OPC=<label>         
  subl $0x8, %esp          #  1     0x27080  3      OPC=subl_r32_imm8   
  addq %r15, %rsp          #  2     0x27083  3      OPC=addq_r64_r64    
  nop                      #  3     0x27086  1      OPC=nop             
  nop                      #  4     0x27087  1      OPC=nop             
  nop                      #  5     0x27088  1      OPC=nop             
  nop                      #  6     0x27089  1      OPC=nop             
  nop                      #  7     0x2708a  1      OPC=nop             
  nop                      #  8     0x2708b  1      OPC=nop             
  nop                      #  9     0x2708c  1      OPC=nop             
  nop                      #  10    0x2708d  1      OPC=nop             
  nop                      #  11    0x2708e  1      OPC=nop             
  nop                      #  12    0x2708f  1      OPC=nop             
  nop                      #  13    0x27090  1      OPC=nop             
  nop                      #  14    0x27091  1      OPC=nop             
  nop                      #  15    0x27092  1      OPC=nop             
  nop                      #  16    0x27093  1      OPC=nop             
  nop                      #  17    0x27094  1      OPC=nop             
  nop                      #  18    0x27095  1      OPC=nop             
  nop                      #  19    0x27096  1      OPC=nop             
  nop                      #  20    0x27097  1      OPC=nop             
  nop                      #  21    0x27098  1      OPC=nop             
  nop                      #  22    0x27099  1      OPC=nop             
  nop                      #  23    0x2709a  1      OPC=nop             
  callq .clock             #  24    0x2709b  5      OPC=callq_label     
  movl $0x10624dd3, %edx   #  25    0x270a0  5      OPC=movl_r32_imm32  
  mull %edx                #  26    0x270a5  2      OPC=mull_r32        
  shrl $0x6, %edx          #  27    0x270a7  3      OPC=shrl_r32_imm8   
  movl %edx, %eax          #  28    0x270aa  2      OPC=movl_r32_r32    
  addl $0x8, %esp          #  29    0x270ac  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  30    0x270af  3      OPC=addq_r64_r64    
  popq %r11                #  31    0x270b2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  32    0x270b4  7      OPC=andl_r32_imm32  
  nop                      #  33    0x270bb  1      OPC=nop             
  nop                      #  34    0x270bc  1      OPC=nop             
  nop                      #  35    0x270bd  1      OPC=nop             
  nop                      #  36    0x270be  1      OPC=nop             
  addq %r15, %r11          #  37    0x270bf  3      OPC=addq_r64_r64    
  jmpq %r11                #  38    0x270c2  3      OPC=jmpq_r64        
  xchgw %ax, %ax           #  39    0x270c5  2      OPC=xchgw_ax_r16    
                                                                        
.size Milliseconds, .-Milliseconds

