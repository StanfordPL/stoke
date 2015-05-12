  .text
  .globl malloc_trim
  .type malloc_trim, @function

#! file-offset 0x622c0
#! rip-offset  0x622c0
#! capacity    288 bytes

# Text                         #  Line  RIP      Bytes  
.malloc_trim:                  #        0x622c0  0      
  movl 0xffd45ca(%rip), %esi   #  1     0x622c0  6      
  pushq %rbx                   #  2     0x622c6  2      
  movl %edi, %ebx              #  3     0x622c8  2      
  testl %esi, %esi             #  4     0x622ca  2      
  je .L_62360                  #  5     0x622cc  6      
  nop                          #  6     0x622d2  1      
.L_622e0:                      #        0x622d3  0      
  testb $0x2, 0xffd47a2(%rip)  #  7     0x622d3  7      
  je .L_62300                  #  8     0x622da  6      
  movl $0x1, %eax              #  9     0x622e0  5      
  xchgl %eax, 0xffd4795(%rip)  #  10    0x622e5  6      
  testl %eax, %eax             #  11    0x622eb  2      
  jne .L_623a0                 #  12    0x622ed  6      
  nop                          #  13    0x622f3  1      
.L_62300:                      #        0x622f4  0      
  movl %ebx, %edi              #  14    0x622f4  2      
  nop                          #  15    0x622f6  1      
  nop                          #  16    0x622f7  1      
  callq .T_266                 #  17    0x622f8  5      
  testb $0x2, 0xffd4778(%rip)  #  18    0x622fd  7      
  je .L_62340                  #  19    0x62304  6      
  mfence                       #  20    0x6230a  3      
  movl $0x0, 0xffd4769(%rip)   #  21    0x6230d  10     
  nop                          #  22    0x62317  1      
.L_62340:                      #        0x62318  0      
  popq %rbx                    #  23    0x62318  2      
  popq %r11                    #  24    0x6231a  3      
  andl $0xffffffe0, %r11d      #  25    0x6231d  7      
  addq %r15, %r11              #  26    0x62324  3      
  jmpq %r11                    #  27    0x62327  3      
  nop                          #  28    0x6232a  1      
  nop                          #  29    0x6232b  1      
.L_62360:                      #        0x6232c  0      
  nop                          #  30    0x6232c  1      
  nop                          #  31    0x6232d  1      
  callq .init_mparams          #  32    0x6232e  5      
  jmpq .L_622e0                #  33    0x62333  5      
  nop                          #  34    0x62338  1      
  nop                          #  35    0x62339  1      
.L_623a0:                      #        0x6233a  0      
  movl $0x10036a80, %edi       #  36    0x6233a  5      
  nop                          #  37    0x6233f  1      
  nop                          #  38    0x62340  1      
  callq .spin_acquire_lock     #  39    0x62341  5      
  movl %eax, %edx              #  40    0x62346  2      
  xorl %eax, %eax              #  41    0x62348  2      
  testl %edx, %edx             #  42    0x6234a  2      
  je .L_62300                  #  43    0x6234c  6      
  jmpq .L_62340                #  44    0x62352  5      
  nop                          #  45    0x62357  1      
                                                        
.size malloc_trim, .-malloc_trim

