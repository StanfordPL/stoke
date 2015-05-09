  .text
  .globl malloc_trim
  .type malloc_trim, @function

#! file-offset 0x622a0
#! rip-offset  0x622a0
#! capacity    288 bytes

# Text                         #  Line  RIP      Bytes  
.malloc_trim:                  #        0x622a0  0      
  movl 0xffd45ea(%rip), %esi   #  1     0x622a0  6      
  pushq %rbx                   #  2     0x622a6  2      
  movl %edi, %ebx              #  3     0x622a8  2      
  testl %esi, %esi             #  4     0x622aa  2      
  je .L_62340                  #  5     0x622ac  6      
  nop                          #  6     0x622b2  1      
.L_622c0:                      #        0x622b3  0      
  testb $0x2, 0xffd47c2(%rip)  #  7     0x622b3  7      
  je .L_622e0                  #  8     0x622ba  6      
  movl $0x1, %eax              #  9     0x622c0  5      
  xchgl %eax, 0xffd47b5(%rip)  #  10    0x622c5  6      
  testl %eax, %eax             #  11    0x622cb  2      
  jne .L_62380                 #  12    0x622cd  6      
  nop                          #  13    0x622d3  1      
.L_622e0:                      #        0x622d4  0      
  movl %ebx, %edi              #  14    0x622d4  2      
  nop                          #  15    0x622d6  1      
  nop                          #  16    0x622d7  1      
  callq .T_266                 #  17    0x622d8  5      
  testb $0x2, 0xffd4798(%rip)  #  18    0x622dd  7      
  je .L_62320                  #  19    0x622e4  6      
  mfence                       #  20    0x622ea  3      
  movl $0x0, 0xffd4789(%rip)   #  21    0x622ed  10     
  nop                          #  22    0x622f7  1      
.L_62320:                      #        0x622f8  0      
  popq %rbx                    #  23    0x622f8  2      
  popq %r11                    #  24    0x622fa  3      
  andl $0xffffffe0, %r11d      #  25    0x622fd  7      
  addq %r15, %r11              #  26    0x62304  3      
  jmpq %r11                    #  27    0x62307  3      
  nop                          #  28    0x6230a  1      
  nop                          #  29    0x6230b  1      
.L_62340:                      #        0x6230c  0      
  nop                          #  30    0x6230c  1      
  nop                          #  31    0x6230d  1      
  callq .init_mparams          #  32    0x6230e  5      
  jmpq .L_622c0                #  33    0x62313  5      
  nop                          #  34    0x62318  1      
  nop                          #  35    0x62319  1      
.L_62380:                      #        0x6231a  0      
  movl $0x10036a80, %edi       #  36    0x6231a  5      
  nop                          #  37    0x6231f  1      
  nop                          #  38    0x62320  1      
  callq .spin_acquire_lock     #  39    0x62321  5      
  movl %eax, %edx              #  40    0x62326  2      
  xorl %eax, %eax              #  41    0x62328  2      
  testl %edx, %edx             #  42    0x6232a  2      
  je .L_622e0                  #  43    0x6232c  6      
  jmpq .L_62320                #  44    0x62332  5      
  nop                          #  45    0x62337  1      
                                                        
.size malloc_trim, .-malloc_trim

