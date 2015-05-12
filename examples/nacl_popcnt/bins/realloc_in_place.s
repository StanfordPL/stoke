  .text
  .globl realloc_in_place
  .type realloc_in_place, @function

#! file-offset 0x66820
#! rip-offset  0x66820
#! capacity    416 bytes

# Text                         #  Line  RIP      Bytes  
.realloc_in_place:             #        0x66820  0      
  movq %rbx, -0x18(%rsp)       #  1     0x66820  5      
  movl %edi, %ebx              #  2     0x66825  2      
  movq %r12, -0x10(%rsp)       #  3     0x66827  5      
  movq %r13, -0x8(%rsp)        #  4     0x6682c  5      
  subl $0x18, %esp             #  5     0x66831  3      
  addq %r15, %rsp              #  6     0x66834  3      
  testq %rbx, %rbx             #  7     0x66837  3      
  je .L_668c0                  #  8     0x6683a  6      
  cmpl $0xffffffbf, %esi       #  9     0x66840  6      
  ja .L_66980                  #  10    0x66846  6      
  cmpl $0xa, %esi              #  11    0x6684c  3      
  movl $0x10, %r13d            #  12    0x6684f  6      
  ja .L_66900                  #  13    0x66855  6      
  nop                          #  14    0x6685b  1      
.L_66860:                      #        0x6685c  0      
  testb $0x2, 0xffd0219(%rip)  #  15    0x6685c  7      
  je .L_66880                  #  16    0x66863  6      
  movl $0x1, %eax              #  17    0x66869  5      
  xchgl %eax, 0xffd020c(%rip)  #  18    0x6686e  6      
  testl %eax, %eax             #  19    0x66874  2      
  jne .L_66920                 #  20    0x66876  6      
  nop                          #  21    0x6687c  1      
.L_66880:                      #        0x6687d  0      
  leal -0x8(%rbx), %r12d       #  22    0x6687d  4      
  xorl %edx, %edx              #  23    0x66881  2      
  movl %r13d, %esi             #  24    0x66883  3      
  movl %r12d, %edi             #  25    0x66886  3      
  nop                          #  26    0x66889  1      
  callq .T_276                 #  27    0x6688a  5      
  testb $0x2, 0xffd01e6(%rip)  #  28    0x6688f  7      
  movl %eax, %edx              #  29    0x66896  2      
  jne .L_66960                 #  30    0x66898  6      
  cmpl %edx, %r12d             #  31    0x6689e  3      
  movq %rbx, %rax              #  32    0x668a1  3      
  je .L_668e0                  #  33    0x668a4  6      
  nop                          #  34    0x668aa  1      
.L_668c0:                      #        0x668ab  0      
  xorl %eax, %eax              #  35    0x668ab  2      
  nop                          #  36    0x668ad  1      
  nop                          #  37    0x668ae  1      
.L_668e0:                      #        0x668af  0      
  movq (%rsp), %rbx            #  38    0x668af  4      
  movq 0x8(%rsp), %r12         #  39    0x668b3  5      
  movq 0x10(%rsp), %r13        #  40    0x668b8  5      
  addl $0x18, %esp             #  41    0x668bd  3      
  addq %r15, %rsp              #  42    0x668c0  3      
  popq %r11                    #  43    0x668c3  3      
  andl $0xffffffe0, %r11d      #  44    0x668c6  7      
  addq %r15, %r11              #  45    0x668cd  3      
  jmpq %r11                    #  46    0x668d0  3      
.L_66900:                      #        0x668d3  0      
  leal 0xb(%rsi), %r13d        #  47    0x668d3  4      
  andl $0xfffffff8, %r13d      #  48    0x668d7  7      
  jmpq .L_66860                #  49    0x668de  5      
  nop                          #  50    0x668e3  1      
  nop                          #  51    0x668e4  1      
.L_66920:                      #        0x668e5  0      
  movl $0x10036a80, %edi       #  52    0x668e5  5      
  nop                          #  53    0x668ea  1      
  nop                          #  54    0x668eb  1      
  callq .spin_acquire_lock     #  55    0x668ec  5      
  testl %eax, %eax             #  56    0x668f1  2      
  jne .L_668c0                 #  57    0x668f3  6      
  jmpq .L_66880                #  58    0x668f9  5      
  nop                          #  59    0x668fe  1      
  nop                          #  60    0x668ff  1      
.L_66960:                      #        0x66900  0      
  cmpl %edx, %r12d             #  61    0x66900  3      
  mfence                       #  62    0x66903  3      
  movq %rbx, %rax              #  63    0x66906  3      
  movl $0x0, 0xffd016d(%rip)   #  64    0x66909  10     
  jne .L_668c0                 #  65    0x66913  6      
  jmpq .L_668e0                #  66    0x66919  5      
  xchgw %ax, %ax               #  67    0x6691e  3      
.L_66980:                      #        0x66921  0      
  nop                          #  68    0x66921  1      
  nop                          #  69    0x66922  1      
  callq .__errno               #  70    0x66923  5      
  movl %eax, %eax              #  71    0x66928  2      
  movl %eax, %eax              #  72    0x6692a  2      
  movl $0xc, (%r15,%rax,1)     #  73    0x6692c  8      
  xorl %eax, %eax              #  74    0x66934  2      
  jmpq .L_668e0                #  75    0x66936  5      
  nop                          #  76    0x6693b  1      
                                                        
.size realloc_in_place, .-realloc_in_place

