  .text
  .globl _ZNKSs4dataEv
  .type _ZNKSs4dataEv, @function

#! file-offset 0x44620
#! rip-offset  0x44620
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs4dataEv:             #        0x44620  0      
  popq %r11                 #  1     0x44620  3      
  movl %edi, %edi           #  2     0x44623  2      
  movl %edi, %edi           #  3     0x44625  2      
  movl (%r15,%rdi,1), %eax  #  4     0x44627  4      
  andl $0xffffffe0, %r11d   #  5     0x4462b  7      
  addq %r15, %r11           #  6     0x44632  3      
  jmpq %r11                 #  7     0x44635  3      
  nop                       #  8     0x44638  1      
  nop                       #  9     0x44639  1      
  nop                       #  10    0x4463a  1      
  nop                       #  11    0x4463b  1      
  nop                       #  12    0x4463c  1      
  nop                       #  13    0x4463d  1      
  nop                       #  14    0x4463e  1      
  nop                       #  15    0x4463f  1      
  nop                       #  16    0x44640  1      
  nop                       #  17    0x44641  1      
  nop                       #  18    0x44642  1      
  nop                       #  19    0x44643  1      
                                                     
.size _ZNKSs4dataEv, .-_ZNKSs4dataEv

