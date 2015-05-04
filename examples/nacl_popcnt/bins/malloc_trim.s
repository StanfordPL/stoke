  .text
  .globl malloc_trim
  .type malloc_trim, @function

#! file-offset 0x62340
#! rip-offset  0x62340
#! capacity    288 bytes

# Text                         #  Line  RIP      Bytes  
.malloc_trim:                  #        0x62340  0      
  movl 0xffd454a(%rip), %esi   #  1     0x62340  6      
  pushq %rbx                   #  2     0x62346  2      
  movl %edi, %ebx              #  3     0x62348  2      
  testl %esi, %esi             #  4     0x6234a  2      
  je .L_623e0                  #  5     0x6234c  6      
  nop                          #  6     0x62352  1      
.L_62360:                      #        0x62353  0      
  testb $0x2, 0xffd4722(%rip)  #  7     0x62353  7      
  je .L_62380                  #  8     0x6235a  6      
  movl $0x1, %eax              #  9     0x62360  5      
  xchgl %eax, 0xffd4715(%rip)  #  10    0x62365  6      
  testl %eax, %eax             #  11    0x6236b  2      
  jne .L_62420                 #  12    0x6236d  6      
  nop                          #  13    0x62373  1      
.L_62380:                      #        0x62374  0      
  movl %ebx, %edi              #  14    0x62374  2      
  nop                          #  15    0x62376  1      
  nop                          #  16    0x62377  1      
  callq .T_266                 #  17    0x62378  5      
  testb $0x2, 0xffd46f8(%rip)  #  18    0x6237d  7      
  je .L_623c0                  #  19    0x62384  6      
  mfence                       #  20    0x6238a  3      
  movl $0x0, 0xffd46e9(%rip)   #  21    0x6238d  10     
  nop                          #  22    0x62397  1      
.L_623c0:                      #        0x62398  0      
  popq %rbx                    #  23    0x62398  2      
  popq %r11                    #  24    0x6239a  3      
  andl $0xffffffe0, %r11d      #  25    0x6239d  7      
  addq %r15, %r11              #  26    0x623a4  3      
  jmpq %r11                    #  27    0x623a7  3      
  nop                          #  28    0x623aa  1      
  nop                          #  29    0x623ab  1      
.L_623e0:                      #        0x623ac  0      
  nop                          #  30    0x623ac  1      
  nop                          #  31    0x623ad  1      
  callq .init_mparams          #  32    0x623ae  5      
  jmpq .L_62360                #  33    0x623b3  5      
  nop                          #  34    0x623b8  1      
  nop                          #  35    0x623b9  1      
.L_62420:                      #        0x623ba  0      
  movl $0x10036a80, %edi       #  36    0x623ba  5      
  nop                          #  37    0x623bf  1      
  nop                          #  38    0x623c0  1      
  callq .spin_acquire_lock     #  39    0x623c1  5      
  movl %eax, %edx              #  40    0x623c6  2      
  xorl %eax, %eax              #  41    0x623c8  2      
  testl %edx, %edx             #  42    0x623ca  2      
  je .L_62380                  #  43    0x623cc  6      
  jmpq .L_623c0                #  44    0x623d2  5      
  nop                          #  45    0x623d7  1      
                                                        
.size malloc_trim, .-malloc_trim

