  .text
  .globl init_dwarf_reg_size_table
  .type init_dwarf_reg_size_table, @function

#! file-offset 0x592e0
#! rip-offset  0x592e0
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.init_dwarf_reg_size_table:   #        0x592e0  0      
  popq %r11                   #  1     0x592e0  3      
  movb $0x8, 0xffdd556(%rip)  #  2     0x592e3  7      
  movb $0x8, 0xffdd550(%rip)  #  3     0x592ea  7      
  movb $0x8, 0xffdd54a(%rip)  #  4     0x592f1  7      
  movb $0x8, 0xffdd544(%rip)  #  5     0x592f8  7      
  xchgw %ax, %ax              #  6     0x592ff  3      
  movb $0x8, 0xffdd53b(%rip)  #  7     0x59302  7      
  movb $0x8, 0xffdd535(%rip)  #  8     0x59309  7      
  movb $0x8, 0xffdd52f(%rip)  #  9     0x59310  7      
  movb $0x8, 0xffdd529(%rip)  #  10    0x59317  7      
  nop                         #  11    0x5931e  1      
  movb $0x8, 0xffdd522(%rip)  #  12    0x5931f  7      
  movb $0x8, 0xffdd51c(%rip)  #  13    0x59326  7      
  movb $0x8, 0xffdd516(%rip)  #  14    0x5932d  7      
  movb $0x8, 0xffdd510(%rip)  #  15    0x59334  7      
  nop                         #  16    0x5933b  1      
  movb $0x8, 0xffdd509(%rip)  #  17    0x5933c  7      
  movb $0x8, 0xffdd503(%rip)  #  18    0x59343  7      
  movb $0x8, 0xffdd4fd(%rip)  #  19    0x5934a  7      
  movb $0x8, 0xffdd4f7(%rip)  #  20    0x59351  7      
  nop                         #  21    0x59358  1      
  movb $0x8, 0xffdd4f0(%rip)  #  22    0x59359  7      
  andl $0xffffffe0, %r11d     #  23    0x59360  7      
  addq %r15, %r11             #  24    0x59367  3      
  jmpq %r11                   #  25    0x5936a  3      
  nop                         #  26    0x5936d  1      
                                                       
.size init_dwarf_reg_size_table, .-init_dwarf_reg_size_table

