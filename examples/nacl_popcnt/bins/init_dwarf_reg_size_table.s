  .text
  .globl init_dwarf_reg_size_table
  .type init_dwarf_reg_size_table, @function

#! file-offset 0x59260
#! rip-offset  0x59260
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.init_dwarf_reg_size_table:   #        0x59260  0      
  popq %r11                   #  1     0x59260  3      
  movb $0x8, 0xffdd5d6(%rip)  #  2     0x59263  7      
  movb $0x8, 0xffdd5d0(%rip)  #  3     0x5926a  7      
  movb $0x8, 0xffdd5ca(%rip)  #  4     0x59271  7      
  movb $0x8, 0xffdd5c4(%rip)  #  5     0x59278  7      
  xchgw %ax, %ax              #  6     0x5927f  3      
  movb $0x8, 0xffdd5bb(%rip)  #  7     0x59282  7      
  movb $0x8, 0xffdd5b5(%rip)  #  8     0x59289  7      
  movb $0x8, 0xffdd5af(%rip)  #  9     0x59290  7      
  movb $0x8, 0xffdd5a9(%rip)  #  10    0x59297  7      
  nop                         #  11    0x5929e  1      
  movb $0x8, 0xffdd5a2(%rip)  #  12    0x5929f  7      
  movb $0x8, 0xffdd59c(%rip)  #  13    0x592a6  7      
  movb $0x8, 0xffdd596(%rip)  #  14    0x592ad  7      
  movb $0x8, 0xffdd590(%rip)  #  15    0x592b4  7      
  nop                         #  16    0x592bb  1      
  movb $0x8, 0xffdd589(%rip)  #  17    0x592bc  7      
  movb $0x8, 0xffdd583(%rip)  #  18    0x592c3  7      
  movb $0x8, 0xffdd57d(%rip)  #  19    0x592ca  7      
  movb $0x8, 0xffdd577(%rip)  #  20    0x592d1  7      
  nop                         #  21    0x592d8  1      
  movb $0x8, 0xffdd570(%rip)  #  22    0x592d9  7      
  andl $0xffffffe0, %r11d     #  23    0x592e0  7      
  addq %r15, %r11             #  24    0x592e7  3      
  jmpq %r11                   #  25    0x592ea  3      
  nop                         #  26    0x592ed  1      
                                                       
.size init_dwarf_reg_size_table, .-init_dwarf_reg_size_table

