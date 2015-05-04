  .text
  .globl realloc_in_place
  .type realloc_in_place, @function

#! file-offset 0x668a0
#! rip-offset  0x668a0
#! capacity    416 bytes

# Text                         #  Line  RIP      Bytes  
.realloc_in_place:             #        0x668a0  0      
  movq %rbx, -0x18(%rsp)       #  1     0x668a0  5      
  movl %edi, %ebx              #  2     0x668a5  2      
  movq %r12, -0x10(%rsp)       #  3     0x668a7  5      
  movq %r13, -0x8(%rsp)        #  4     0x668ac  5      
  subl $0x18, %esp             #  5     0x668b1  3      
  addq %r15, %rsp              #  6     0x668b4  3      
  testq %rbx, %rbx             #  7     0x668b7  3      
  je .L_66940                  #  8     0x668ba  6      
  cmpl $0xffffffbf, %esi       #  9     0x668c0  6      
  ja .L_66a00                  #  10    0x668c6  6      
  cmpl $0xa, %esi              #  11    0x668cc  3      
  movl $0x10, %r13d            #  12    0x668cf  6      
  ja .L_66980                  #  13    0x668d5  6      
  nop                          #  14    0x668db  1      
.L_668e0:                      #        0x668dc  0      
  testb $0x2, 0xffd0199(%rip)  #  15    0x668dc  7      
  je .L_66900                  #  16    0x668e3  6      
  movl $0x1, %eax              #  17    0x668e9  5      
  xchgl %eax, 0xffd018c(%rip)  #  18    0x668ee  6      
  testl %eax, %eax             #  19    0x668f4  2      
  jne .L_669a0                 #  20    0x668f6  6      
  nop                          #  21    0x668fc  1      
.L_66900:                      #        0x668fd  0      
  leal -0x8(%rbx), %r12d       #  22    0x668fd  4      
  xorl %edx, %edx              #  23    0x66901  2      
  movl %r13d, %esi             #  24    0x66903  3      
  movl %r12d, %edi             #  25    0x66906  3      
  nop                          #  26    0x66909  1      
  callq .T_276                 #  27    0x6690a  5      
  testb $0x2, 0xffd0166(%rip)  #  28    0x6690f  7      
  movl %eax, %edx              #  29    0x66916  2      
  jne .L_669e0                 #  30    0x66918  6      
  cmpl %edx, %r12d             #  31    0x6691e  3      
  movq %rbx, %rax              #  32    0x66921  3      
  je .L_66960                  #  33    0x66924  6      
  nop                          #  34    0x6692a  1      
.L_66940:                      #        0x6692b  0      
  xorl %eax, %eax              #  35    0x6692b  2      
  nop                          #  36    0x6692d  1      
  nop                          #  37    0x6692e  1      
.L_66960:                      #        0x6692f  0      
  movq (%rsp), %rbx            #  38    0x6692f  4      
  movq 0x8(%rsp), %r12         #  39    0x66933  5      
  movq 0x10(%rsp), %r13        #  40    0x66938  5      
  addl $0x18, %esp             #  41    0x6693d  3      
  addq %r15, %rsp              #  42    0x66940  3      
  popq %r11                    #  43    0x66943  3      
  andl $0xffffffe0, %r11d      #  44    0x66946  7      
  addq %r15, %r11              #  45    0x6694d  3      
  jmpq %r11                    #  46    0x66950  3      
.L_66980:                      #        0x66953  0      
  leal 0xb(%rsi), %r13d        #  47    0x66953  4      
  andl $0xfffffff8, %r13d      #  48    0x66957  7      
  jmpq .L_668e0                #  49    0x6695e  5      
  nop                          #  50    0x66963  1      
  nop                          #  51    0x66964  1      
.L_669a0:                      #        0x66965  0      
  movl $0x10036a80, %edi       #  52    0x66965  5      
  nop                          #  53    0x6696a  1      
  nop                          #  54    0x6696b  1      
  callq .spin_acquire_lock     #  55    0x6696c  5      
  testl %eax, %eax             #  56    0x66971  2      
  jne .L_66940                 #  57    0x66973  6      
  jmpq .L_66900                #  58    0x66979  5      
  nop                          #  59    0x6697e  1      
  nop                          #  60    0x6697f  1      
.L_669e0:                      #        0x66980  0      
  cmpl %edx, %r12d             #  61    0x66980  3      
  mfence                       #  62    0x66983  3      
  movq %rbx, %rax              #  63    0x66986  3      
  movl $0x0, 0xffd00ed(%rip)   #  64    0x66989  10     
  jne .L_66940                 #  65    0x66993  6      
  jmpq .L_66960                #  66    0x66999  5      
  xchgw %ax, %ax               #  67    0x6699e  3      
.L_66a00:                      #        0x669a1  0      
  nop                          #  68    0x669a1  1      
  nop                          #  69    0x669a2  1      
  callq .__errno               #  70    0x669a3  5      
  movl %eax, %eax              #  71    0x669a8  2      
  movl %eax, %eax              #  72    0x669aa  2      
  movl $0xc, (%r15,%rax,1)     #  73    0x669ac  8      
  xorl %eax, %eax              #  74    0x669b4  2      
  jmpq .L_66960                #  75    0x669b6  5      
  nop                          #  76    0x669bb  1      
                                                        
.size realloc_in_place, .-realloc_in_place

