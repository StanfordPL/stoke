  .text
  .globl simple_memset
  .type simple_memset, @function

#! file-offset 0xa0
#! rip-offset  0x60
#! capacity    32 bytes

# Text                   #  Line  RIP   Bytes  Opcode             
.simple_memset:          #        0x60  0      OPC=<label>        
  addq %rdi, %rdx        #  1     0x60  3      OPC=addq_r64_r64   
  movq %rdi, %rax        #  2     0x63  3      OPC=movq_r64_r64   
  movq %rdi, %rcx        #  3     0x66  3      OPC=movq_r64_r64   
  cmpq %rdx, %rdi        #  4     0x69  3      OPC=cmpq_r64_r64   
  jae .L_47d             #  5     0x6c  2      OPC=jae_label      
  xchgw %ax, %ax         #  6     0x6e  2      OPC=xchgw_ax_r16   
  addq $0x1, %rcx        #  7     0x70  4      OPC=addq_r64_imm8  
  movb %sil, -0x1(%rcx)  #  8     0x74  4      OPC=movb_m8_r8     
  cmpq %rdx, %rcx        #  9     0x78  3      OPC=cmpq_r64_r64   
  jne .L_470             #  10    0x7b  2      OPC=jne_label      
  retq                   #  11    0x7d  1      OPC=retq           
  nop                    #  12    0x7e  1      OPC=nop            
  nop                    #  13    0x7f  1      OPC=nop            
                                                                  
.size simple_memset, .-simple_memset

