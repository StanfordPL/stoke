  .text
  .globl _ftell_r
  .type _ftell_r, @function

#! file-offset 0x15cc40
#! rip-offset  0x11cc40
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
._ftell_r:                 #        0x11cc40  0      OPC=<label>         
  subl $0x8, %esp          #  1     0x11cc40  3      OPC=subl_r32_imm8   
  addq %r15, %rsp          #  2     0x11cc43  3      OPC=addq_r64_r64    
  movl %edi, %edi          #  3     0x11cc46  2      OPC=movl_r32_r32    
  movl %esi, %esi          #  4     0x11cc48  2      OPC=movl_r32_r32    
  xchgw %ax, %ax           #  5     0x11cc4a  2      OPC=xchgw_ax_r16    
  nop                      #  6     0x11cc4c  1      OPC=nop             
  nop                      #  7     0x11cc4d  1      OPC=nop             
  nop                      #  8     0x11cc4e  1      OPC=nop             
  nop                      #  9     0x11cc4f  1      OPC=nop             
  nop                      #  10    0x11cc50  1      OPC=nop             
  nop                      #  11    0x11cc51  1      OPC=nop             
  nop                      #  12    0x11cc52  1      OPC=nop             
  nop                      #  13    0x11cc53  1      OPC=nop             
  nop                      #  14    0x11cc54  1      OPC=nop             
  nop                      #  15    0x11cc55  1      OPC=nop             
  nop                      #  16    0x11cc56  1      OPC=nop             
  nop                      #  17    0x11cc57  1      OPC=nop             
  nop                      #  18    0x11cc58  1      OPC=nop             
  nop                      #  19    0x11cc59  1      OPC=nop             
  nop                      #  20    0x11cc5a  1      OPC=nop             
  callq ._ftello_r         #  21    0x11cc5b  5      OPC=callq_label     
  addl $0x8, %esp          #  22    0x11cc60  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  23    0x11cc63  3      OPC=addq_r64_r64    
  popq %r11                #  24    0x11cc66  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  25    0x11cc68  7      OPC=andl_r32_imm32  
  nop                      #  26    0x11cc6f  1      OPC=nop             
  nop                      #  27    0x11cc70  1      OPC=nop             
  nop                      #  28    0x11cc71  1      OPC=nop             
  nop                      #  29    0x11cc72  1      OPC=nop             
  addq %r15, %r11          #  30    0x11cc73  3      OPC=addq_r64_r64    
  jmpq %r11                #  31    0x11cc76  3      OPC=jmpq_r64        
  nop                      #  32    0x11cc79  1      OPC=nop             
  nop                      #  33    0x11cc7a  1      OPC=nop             
  nop                      #  34    0x11cc7b  1      OPC=nop             
  nop                      #  35    0x11cc7c  1      OPC=nop             
  nop                      #  36    0x11cc7d  1      OPC=nop             
  nop                      #  37    0x11cc7e  1      OPC=nop             
  nop                      #  38    0x11cc7f  1      OPC=nop             
  nop                      #  39    0x11cc80  1      OPC=nop             
  nop                      #  40    0x11cc81  1      OPC=nop             
  nop                      #  41    0x11cc82  1      OPC=nop             
  nop                      #  42    0x11cc83  1      OPC=nop             
  nop                      #  43    0x11cc84  1      OPC=nop             
  nop                      #  44    0x11cc85  1      OPC=nop             
  nop                      #  45    0x11cc86  1      OPC=nop             
                                                                         
.size _ftell_r, .-_ftell_r

