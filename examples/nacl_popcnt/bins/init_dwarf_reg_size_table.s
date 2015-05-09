  .text
  .globl init_dwarf_reg_size_table
  .type init_dwarf_reg_size_table, @function

#! file-offset 0x59240
#! rip-offset  0x59240
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.init_dwarf_reg_size_table:   #        0x59240  0      
  popq %r11                   #  1     0x59240  3      
  movb $0x8, 0xffdd5f6(%rip)  #  2     0x59243  7      
  movb $0x8, 0xffdd5f0(%rip)  #  3     0x5924a  7      
  movb $0x8, 0xffdd5ea(%rip)  #  4     0x59251  7      
  movb $0x8, 0xffdd5e4(%rip)  #  5     0x59258  7      
  xchgw %ax, %ax              #  6     0x5925f  3      
  movb $0x8, 0xffdd5db(%rip)  #  7     0x59262  7      
  movb $0x8, 0xffdd5d5(%rip)  #  8     0x59269  7      
  movb $0x8, 0xffdd5cf(%rip)  #  9     0x59270  7      
  movb $0x8, 0xffdd5c9(%rip)  #  10    0x59277  7      
  nop                         #  11    0x5927e  1      
  movb $0x8, 0xffdd5c2(%rip)  #  12    0x5927f  7      
  movb $0x8, 0xffdd5bc(%rip)  #  13    0x59286  7      
  movb $0x8, 0xffdd5b6(%rip)  #  14    0x5928d  7      
  movb $0x8, 0xffdd5b0(%rip)  #  15    0x59294  7      
  nop                         #  16    0x5929b  1      
  movb $0x8, 0xffdd5a9(%rip)  #  17    0x5929c  7      
  movb $0x8, 0xffdd5a3(%rip)  #  18    0x592a3  7      
  movb $0x8, 0xffdd59d(%rip)  #  19    0x592aa  7      
  movb $0x8, 0xffdd597(%rip)  #  20    0x592b1  7      
  nop                         #  21    0x592b8  1      
  movb $0x8, 0xffdd590(%rip)  #  22    0x592b9  7      
  andl $0xffffffe0, %r11d     #  23    0x592c0  7      
  addq %r15, %r11             #  24    0x592c7  3      
  jmpq %r11                   #  25    0x592ca  3      
  nop                         #  26    0x592cd  1      
                                                       
.size init_dwarf_reg_size_table, .-init_dwarf_reg_size_table

