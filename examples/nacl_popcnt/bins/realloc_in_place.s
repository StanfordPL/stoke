  .text
  .globl realloc_in_place
  .type realloc_in_place, @function

#! file-offset 0x66800
#! rip-offset  0x66800
#! capacity    416 bytes

# Text                         #  Line  RIP      Bytes  
.realloc_in_place:             #        0x66800  0      
  movq %rbx, -0x18(%rsp)       #  1     0x66800  5      
  movl %edi, %ebx              #  2     0x66805  2      
  movq %r12, -0x10(%rsp)       #  3     0x66807  5      
  movq %r13, -0x8(%rsp)        #  4     0x6680c  5      
  subl $0x18, %esp             #  5     0x66811  3      
  addq %r15, %rsp              #  6     0x66814  3      
  testq %rbx, %rbx             #  7     0x66817  3      
  je .L_668a0                  #  8     0x6681a  6      
  cmpl $0xffffffbf, %esi       #  9     0x66820  6      
  ja .L_66960                  #  10    0x66826  6      
  cmpl $0xa, %esi              #  11    0x6682c  3      
  movl $0x10, %r13d            #  12    0x6682f  6      
  ja .L_668e0                  #  13    0x66835  6      
  nop                          #  14    0x6683b  1      
.L_66840:                      #        0x6683c  0      
  testb $0x2, 0xffd0239(%rip)  #  15    0x6683c  7      
  je .L_66860                  #  16    0x66843  6      
  movl $0x1, %eax              #  17    0x66849  5      
  xchgl %eax, 0xffd022c(%rip)  #  18    0x6684e  6      
  testl %eax, %eax             #  19    0x66854  2      
  jne .L_66900                 #  20    0x66856  6      
  nop                          #  21    0x6685c  1      
.L_66860:                      #        0x6685d  0      
  leal -0x8(%rbx), %r12d       #  22    0x6685d  4      
  xorl %edx, %edx              #  23    0x66861  2      
  movl %r13d, %esi             #  24    0x66863  3      
  movl %r12d, %edi             #  25    0x66866  3      
  nop                          #  26    0x66869  1      
  callq .T_276                 #  27    0x6686a  5      
  testb $0x2, 0xffd0206(%rip)  #  28    0x6686f  7      
  movl %eax, %edx              #  29    0x66876  2      
  jne .L_66940                 #  30    0x66878  6      
  cmpl %edx, %r12d             #  31    0x6687e  3      
  movq %rbx, %rax              #  32    0x66881  3      
  je .L_668c0                  #  33    0x66884  6      
  nop                          #  34    0x6688a  1      
.L_668a0:                      #        0x6688b  0      
  xorl %eax, %eax              #  35    0x6688b  2      
  nop                          #  36    0x6688d  1      
  nop                          #  37    0x6688e  1      
.L_668c0:                      #        0x6688f  0      
  movq (%rsp), %rbx            #  38    0x6688f  4      
  movq 0x8(%rsp), %r12         #  39    0x66893  5      
  movq 0x10(%rsp), %r13        #  40    0x66898  5      
  addl $0x18, %esp             #  41    0x6689d  3      
  addq %r15, %rsp              #  42    0x668a0  3      
  popq %r11                    #  43    0x668a3  3      
  andl $0xffffffe0, %r11d      #  44    0x668a6  7      
  addq %r15, %r11              #  45    0x668ad  3      
  jmpq %r11                    #  46    0x668b0  3      
.L_668e0:                      #        0x668b3  0      
  leal 0xb(%rsi), %r13d        #  47    0x668b3  4      
  andl $0xfffffff8, %r13d      #  48    0x668b7  7      
  jmpq .L_66840                #  49    0x668be  5      
  nop                          #  50    0x668c3  1      
  nop                          #  51    0x668c4  1      
.L_66900:                      #        0x668c5  0      
  movl $0x10036a80, %edi       #  52    0x668c5  5      
  nop                          #  53    0x668ca  1      
  nop                          #  54    0x668cb  1      
  callq .spin_acquire_lock     #  55    0x668cc  5      
  testl %eax, %eax             #  56    0x668d1  2      
  jne .L_668a0                 #  57    0x668d3  6      
  jmpq .L_66860                #  58    0x668d9  5      
  nop                          #  59    0x668de  1      
  nop                          #  60    0x668df  1      
.L_66940:                      #        0x668e0  0      
  cmpl %edx, %r12d             #  61    0x668e0  3      
  mfence                       #  62    0x668e3  3      
  movq %rbx, %rax              #  63    0x668e6  3      
  movl $0x0, 0xffd018d(%rip)   #  64    0x668e9  10     
  jne .L_668a0                 #  65    0x668f3  6      
  jmpq .L_668c0                #  66    0x668f9  5      
  xchgw %ax, %ax               #  67    0x668fe  3      
.L_66960:                      #        0x66901  0      
  nop                          #  68    0x66901  1      
  nop                          #  69    0x66902  1      
  callq .__errno               #  70    0x66903  5      
  movl %eax, %eax              #  71    0x66908  2      
  movl %eax, %eax              #  72    0x6690a  2      
  movl $0xc, (%r15,%rax,1)     #  73    0x6690c  8      
  xorl %eax, %eax              #  74    0x66914  2      
  jmpq .L_668c0                #  75    0x66916  5      
  nop                          #  76    0x6691b  1      
                                                        
.size realloc_in_place, .-realloc_in_place

