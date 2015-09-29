  .text
  .globl _sprintf_r
  .type _sprintf_r, @function

#! file-offset 0x166820
#! rip-offset  0x126820
#! capacity    288 bytes

# Text                              #  Line  RIP       Bytes  Opcode               
._sprintf_r:                        #        0x126820  0      OPC=<label>          
  subl $0x148, %esp                 #  1     0x126820  6      OPC=subl_r32_imm32   
  addq %r15, %rsp                   #  2     0x126826  3      OPC=addq_r64_r64     
  movl %esi, %esi                   #  3     0x126829  2      OPC=movl_r32_r32     
  movl %edx, %edx                   #  4     0x12682b  2      OPC=movl_r32_r32     
  leal 0x13f(%rsp), %eax            #  5     0x12682d  7      OPC=leal_r32_m16     
  movq %rcx, 0xa8(%rsp)             #  6     0x126834  8      OPC=movq_m64_r64     
  nop                               #  7     0x12683c  1      OPC=nop              
  nop                               #  8     0x12683d  1      OPC=nop              
  nop                               #  9     0x12683e  1      OPC=nop              
  nop                               #  10    0x12683f  1      OPC=nop              
  movq %r8, 0xb0(%rsp)              #  11    0x126840  8      OPC=movq_m64_r64     
  movq %r9, 0xb8(%rsp)              #  12    0x126848  8      OPC=movq_m64_r64     
  leal 0x80(%rsp), %ecx             #  13    0x126850  7      OPC=leal_r32_m16     
  movl %edi, %edi                   #  14    0x126857  2      OPC=movl_r32_r32     
  nop                               #  15    0x126859  1      OPC=nop              
  nop                               #  16    0x12685a  1      OPC=nop              
  nop                               #  17    0x12685b  1      OPC=nop              
  nop                               #  18    0x12685c  1      OPC=nop              
  nop                               #  19    0x12685d  1      OPC=nop              
  nop                               #  20    0x12685e  1      OPC=nop              
  nop                               #  21    0x12685f  1      OPC=nop              
  movl %eax, %eax                   #  22    0x126860  2      OPC=movl_r32_r32     
  movaps %xmm7, -0xf(%r15,%rax,1)   #  23    0x126862  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  24    0x126868  2      OPC=movl_r32_r32     
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  25    0x12686a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  26    0x126870  2      OPC=movl_r32_r32     
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  27    0x126872  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  28    0x126878  2      OPC=movl_r32_r32     
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  29    0x12687a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  30    0x126880  2      OPC=movl_r32_r32     
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  31    0x126882  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  32    0x126888  2      OPC=movl_r32_r32     
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  33    0x12688a  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  34    0x126890  2      OPC=movl_r32_r32     
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  35    0x126892  6      OPC=movaps_m128_xmm  
  movl %eax, %eax                   #  36    0x126898  2      OPC=movl_r32_r32     
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  37    0x12689a  6      OPC=movaps_m128_xmm  
  leal 0x150(%rsp), %eax            #  38    0x1268a0  7      OPC=leal_r32_m16     
  movl %esi, (%rsp)                 #  39    0x1268a7  3      OPC=movl_m32_r32     
  movl %esi, 0x10(%rsp)             #  40    0x1268aa  4      OPC=movl_m32_r32     
  movl %esp, %esi                   #  41    0x1268ae  2      OPC=movl_r32_r32     
  movw $0x208, 0xc(%rsp)            #  42    0x1268b0  7      OPC=movw_m16_imm16   
  movl %eax, 0x88(%rsp)             #  43    0x1268b7  7      OPC=movl_m32_r32     
  xchgw %ax, %ax                    #  44    0x1268be  2      OPC=xchgw_ax_r16     
  leal 0x90(%rsp), %eax             #  45    0x1268c0  7      OPC=leal_r32_m16     
  movl $0x7fffffff, 0x8(%rsp)       #  46    0x1268c7  8      OPC=movl_m32_imm32   
  movl $0x7fffffff, 0x14(%rsp)      #  47    0x1268cf  8      OPC=movl_m32_imm32   
  movw $0xffff, 0xe(%rsp)           #  48    0x1268d7  7      OPC=movw_m16_imm16   
  xchgw %ax, %ax                    #  49    0x1268de  2      OPC=xchgw_ax_r16     
  movl $0x18, 0x80(%rsp)            #  50    0x1268e0  11     OPC=movl_m32_imm32   
  movl $0x30, 0x84(%rsp)            #  51    0x1268eb  11     OPC=movl_m32_imm32   
  movl %eax, 0x8c(%rsp)             #  52    0x1268f6  7      OPC=movl_m32_r32     
  nop                               #  53    0x1268fd  1      OPC=nop              
  nop                               #  54    0x1268fe  1      OPC=nop              
  nop                               #  55    0x1268ff  1      OPC=nop              
  nop                               #  56    0x126900  1      OPC=nop              
  nop                               #  57    0x126901  1      OPC=nop              
  nop                               #  58    0x126902  1      OPC=nop              
  nop                               #  59    0x126903  1      OPC=nop              
  nop                               #  60    0x126904  1      OPC=nop              
  nop                               #  61    0x126905  1      OPC=nop              
  nop                               #  62    0x126906  1      OPC=nop              
  nop                               #  63    0x126907  1      OPC=nop              
  nop                               #  64    0x126908  1      OPC=nop              
  nop                               #  65    0x126909  1      OPC=nop              
  nop                               #  66    0x12690a  1      OPC=nop              
  nop                               #  67    0x12690b  1      OPC=nop              
  nop                               #  68    0x12690c  1      OPC=nop              
  nop                               #  69    0x12690d  1      OPC=nop              
  nop                               #  70    0x12690e  1      OPC=nop              
  nop                               #  71    0x12690f  1      OPC=nop              
  nop                               #  72    0x126910  1      OPC=nop              
  nop                               #  73    0x126911  1      OPC=nop              
  nop                               #  74    0x126912  1      OPC=nop              
  nop                               #  75    0x126913  1      OPC=nop              
  nop                               #  76    0x126914  1      OPC=nop              
  nop                               #  77    0x126915  1      OPC=nop              
  nop                               #  78    0x126916  1      OPC=nop              
  nop                               #  79    0x126917  1      OPC=nop              
  nop                               #  80    0x126918  1      OPC=nop              
  nop                               #  81    0x126919  1      OPC=nop              
  nop                               #  82    0x12691a  1      OPC=nop              
  callq ._svfprintf_r               #  83    0x12691b  5      OPC=callq_label      
  movl (%rsp), %edx                 #  84    0x126920  3      OPC=movl_r32_m32     
  movl %edx, %edx                   #  85    0x126923  2      OPC=movl_r32_r32     
  movb $0x0, (%r15,%rdx,1)          #  86    0x126925  5      OPC=movb_m8_imm8     
  addl $0x148, %esp                 #  87    0x12692a  6      OPC=addl_r32_imm32   
  addq %r15, %rsp                   #  88    0x126930  3      OPC=addq_r64_r64     
  popq %r11                         #  89    0x126933  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d           #  90    0x126935  7      OPC=andl_r32_imm32   
  nop                               #  91    0x12693c  1      OPC=nop              
  nop                               #  92    0x12693d  1      OPC=nop              
  nop                               #  93    0x12693e  1      OPC=nop              
  nop                               #  94    0x12693f  1      OPC=nop              
  addq %r15, %r11                   #  95    0x126940  3      OPC=addq_r64_r64     
  jmpq %r11                         #  96    0x126943  3      OPC=jmpq_r64         
  nop                               #  97    0x126946  1      OPC=nop              
                                                                                   
.size _sprintf_r, .-_sprintf_r

