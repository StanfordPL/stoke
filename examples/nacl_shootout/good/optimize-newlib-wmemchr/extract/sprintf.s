  .text
  .globl sprintf
  .type sprintf, @function

#! file-offset 0x165fa0
#! rip-offset  0x125fa0
#! capacity    352 bytes

# Text                              #  Line  RIP       Bytes  Opcode               
.sprintf:                           #        0x125fa0  0      OPC=<label>          
  movq %rbx, -0x18(%rsp)            #  1     0x125fa0  5      OPC=movq_m64_r64     
  movq %r12, -0x10(%rsp)            #  2     0x125fa5  5      OPC=movq_m64_r64     
  movl %edi, %edi                   #  3     0x125faa  2      OPC=movl_r32_r32     
  movq %r13, -0x8(%rsp)             #  4     0x125fac  5      OPC=movq_m64_r64     
  subl $0x158, %esp                 #  5     0x125fb1  6      OPC=subl_r32_imm32   
  addq %r15, %rsp                   #  6     0x125fb7  3      OPC=addq_r64_r64     
  movl %esi, %r12d                  #  7     0x125fba  3      OPC=movl_r32_r32     
  nop                               #  8     0x125fbd  1      OPC=nop              
  nop                               #  9     0x125fbe  1      OPC=nop              
  nop                               #  10    0x125fbf  1      OPC=nop              
  leal 0x13f(%rsp), %eax            #  11    0x125fc0  7      OPC=leal_r32_m16     
  movq %rdx, 0xa0(%rsp)             #  12    0x125fc7  8      OPC=movq_m64_r64     
  movq %rcx, 0xa8(%rsp)             #  13    0x125fcf  8      OPC=movq_m64_r64     
  movq %r8, 0xb0(%rsp)              #  14    0x125fd7  8      OPC=movq_m64_r64     
  nop                               #  15    0x125fdf  1      OPC=nop              
  movq %r9, 0xb8(%rsp)              #  16    0x125fe0  8      OPC=movq_m64_r64     
  leal 0x80(%rsp), %r13d            #  17    0x125fe8  8      OPC=leal_r32_m16     
  movl %eax, %eax                   #  18    0x125ff0  2      OPC=movl_r32_r32     
  movaps %xmm7, -0xf(%r15,%rax,1)   #  19    0x125ff2  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  20    0x125ff8  2      OPC=movl_r32_r32     
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  21    0x125ffa  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  22    0x126000  2      OPC=movl_r32_r32     
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  23    0x126002  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  24    0x126008  2      OPC=movl_r32_r32     
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  25    0x12600a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  26    0x126010  2      OPC=movl_r32_r32     
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  27    0x126012  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  28    0x126018  2      OPC=movl_r32_r32     
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  29    0x12601a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  30    0x126020  2      OPC=movl_r32_r32     
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  31    0x126022  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  32    0x126028  2      OPC=movl_r32_r32     
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  33    0x12602a  6      OPC=movaps_m128_xmm  
  leal 0x160(%rsp), %eax            #  34    0x126030  7      OPC=leal_r32_m16     
  movl %edi, (%rsp)                 #  35    0x126037  3      OPC=movl_m32_r32     
  movl %edi, 0x10(%rsp)             #  36    0x12603a  4      OPC=movl_m32_r32     
  xchgw %ax, %ax                    #  37    0x12603e  2      OPC=xchgw_ax_r16     
  movw $0x208, 0xc(%rsp)            #  38    0x126040  7      OPC=movw_m16_imm16   
  movl %eax, 0x88(%rsp)             #  39    0x126047  7      OPC=movl_m32_r32     
  leal 0x90(%rsp), %eax             #  40    0x12604e  7      OPC=leal_r32_m16     
  movl $0x7fffffff, 0x8(%rsp)       #  41    0x126055  8      OPC=movl_m32_imm32   
  nop                               #  42    0x12605d  1      OPC=nop              
  nop                               #  43    0x12605e  1      OPC=nop              
  nop                               #  44    0x12605f  1      OPC=nop              
  movl $0x7fffffff, 0x14(%rsp)      #  45    0x126060  8      OPC=movl_m32_imm32   
  movw $0xffff, 0xe(%rsp)           #  46    0x126068  7      OPC=movw_m16_imm16   
  movl $0x10, 0x80(%rsp)            #  47    0x12606f  11     OPC=movl_m32_imm32   
  nop                               #  48    0x12607a  1      OPC=nop              
  nop                               #  49    0x12607b  1      OPC=nop              
  nop                               #  50    0x12607c  1      OPC=nop              
  nop                               #  51    0x12607d  1      OPC=nop              
  nop                               #  52    0x12607e  1      OPC=nop              
  nop                               #  53    0x12607f  1      OPC=nop              
  movl $0x30, 0x84(%rsp)            #  54    0x126080  11     OPC=movl_m32_imm32   
  movl %eax, 0x8c(%rsp)             #  55    0x12608b  7      OPC=movl_m32_r32     
  nop                               #  56    0x126092  1      OPC=nop              
  nop                               #  57    0x126093  1      OPC=nop              
  nop                               #  58    0x126094  1      OPC=nop              
  nop                               #  59    0x126095  1      OPC=nop              
  nop                               #  60    0x126096  1      OPC=nop              
  nop                               #  61    0x126097  1      OPC=nop              
  nop                               #  62    0x126098  1      OPC=nop              
  nop                               #  63    0x126099  1      OPC=nop              
  nop                               #  64    0x12609a  1      OPC=nop              
  callq .__nacl_read_tp             #  65    0x12609b  5      OPC=callq_label      
  leaq -0x480(%rax), %rax           #  66    0x1260a0  7      OPC=leaq_r64_m16     
  movl %r12d, %edx                  #  67    0x1260a7  3      OPC=movl_r32_r32     
  movl %r13d, %ecx                  #  68    0x1260aa  3      OPC=movl_r32_r32     
  movl %esp, %esi                   #  69    0x1260ad  2      OPC=movl_r32_r32     
  movl %eax, %eax                   #  70    0x1260af  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %edi          #  71    0x1260b1  4      OPC=movl_r32_m32     
  nop                               #  72    0x1260b5  1      OPC=nop              
  nop                               #  73    0x1260b6  1      OPC=nop              
  nop                               #  74    0x1260b7  1      OPC=nop              
  nop                               #  75    0x1260b8  1      OPC=nop              
  nop                               #  76    0x1260b9  1      OPC=nop              
  nop                               #  77    0x1260ba  1      OPC=nop              
  callq ._svfprintf_r               #  78    0x1260bb  5      OPC=callq_label      
  movl (%rsp), %edx                 #  79    0x1260c0  3      OPC=movl_r32_m32     
  movl %edx, %edx                   #  80    0x1260c3  2      OPC=movl_r32_r32     
  movb $0x0, (%r15,%rdx,1)          #  81    0x1260c5  5      OPC=movb_m8_imm8     
  movq 0x140(%rsp), %rbx            #  82    0x1260ca  8      OPC=movq_r64_m64     
  movq 0x148(%rsp), %r12            #  83    0x1260d2  8      OPC=movq_r64_m64     
  nop                               #  84    0x1260da  1      OPC=nop              
  nop                               #  85    0x1260db  1      OPC=nop              
  nop                               #  86    0x1260dc  1      OPC=nop              
  nop                               #  87    0x1260dd  1      OPC=nop              
  nop                               #  88    0x1260de  1      OPC=nop              
  nop                               #  89    0x1260df  1      OPC=nop              
  movq 0x150(%rsp), %r13            #  90    0x1260e0  8      OPC=movq_r64_m64     
  addl $0x158, %esp                 #  91    0x1260e8  6      OPC=addl_r32_imm32   
  addq %r15, %rsp                   #  92    0x1260ee  3      OPC=addq_r64_r64     
  popq %r11                         #  93    0x1260f1  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d           #  94    0x1260f3  7      OPC=andl_r32_imm32   
  nop                               #  95    0x1260fa  1      OPC=nop              
  nop                               #  96    0x1260fb  1      OPC=nop              
  nop                               #  97    0x1260fc  1      OPC=nop              
  nop                               #  98    0x1260fd  1      OPC=nop              
  addq %r15, %r11                   #  99    0x1260fe  3      OPC=addq_r64_r64     
  jmpq %r11                         #  100   0x126101  3      OPC=jmpq_r64         
  nop                               #  101   0x126104  1      OPC=nop              
  nop                               #  102   0x126105  1      OPC=nop              
  nop                               #  103   0x126106  1      OPC=nop              
                                                                                   
.size sprintf, .-sprintf

