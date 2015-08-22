  .text
  .globl List_Append
  .type List_Append, @function

#! file-offset 0x67a20
#! rip-offset  0x27a20
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.List_Append:                   #        0x27a20  0      OPC=<label>         
  pushq %r13                    #  1     0x27a20  2      OPC=pushq_r64_1     
  pushq %r12                    #  2     0x27a22  2      OPC=pushq_r64_1     
  pushq %rbx                    #  3     0x27a24  1      OPC=pushq_r64_1     
  movl %edi, %r13d              #  4     0x27a25  3      OPC=movl_r32_r32    
  movl %esi, %esi               #  5     0x27a28  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  6     0x27a2a  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax      #  7     0x27a2c  4      OPC=movl_r32_m32    
  movl %esi, %esi               #  8     0x27a30  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %ebx   #  9     0x27a32  5      OPC=movl_r32_m32    
  leal (%rax,%rbx,4), %ebx      #  10    0x27a37  3      OPC=leal_r32_m16    
  nop                           #  11    0x27a3a  1      OPC=nop             
  nop                           #  12    0x27a3b  1      OPC=nop             
  nop                           #  13    0x27a3c  1      OPC=nop             
  nop                           #  14    0x27a3d  1      OPC=nop             
  nop                           #  15    0x27a3e  1      OPC=nop             
  nop                           #  16    0x27a3f  1      OPC=nop             
  movl %esi, %esi               #  17    0x27a40  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rsi,1), %r12d  #  18    0x27a42  5      OPC=movl_r32_m32    
  leal (%rax,%r12,4), %r12d     #  19    0x27a47  4      OPC=leal_r32_m16    
  cmpl %r12d, %ebx              #  20    0x27a4b  3      OPC=cmpl_r32_r32    
  ja .L_27aa0                   #  21    0x27a4e  2      OPC=ja_label        
  nop                           #  22    0x27a50  1      OPC=nop             
  nop                           #  23    0x27a51  1      OPC=nop             
  nop                           #  24    0x27a52  1      OPC=nop             
  nop                           #  25    0x27a53  1      OPC=nop             
  nop                           #  26    0x27a54  1      OPC=nop             
  nop                           #  27    0x27a55  1      OPC=nop             
  nop                           #  28    0x27a56  1      OPC=nop             
  nop                           #  29    0x27a57  1      OPC=nop             
  nop                           #  30    0x27a58  1      OPC=nop             
  nop                           #  31    0x27a59  1      OPC=nop             
  nop                           #  32    0x27a5a  1      OPC=nop             
  nop                           #  33    0x27a5b  1      OPC=nop             
  nop                           #  34    0x27a5c  1      OPC=nop             
  nop                           #  35    0x27a5d  1      OPC=nop             
  nop                           #  36    0x27a5e  1      OPC=nop             
  nop                           #  37    0x27a5f  1      OPC=nop             
.L_27a60:                       #        0x27a60  0      OPC=<label>         
  movl %ebx, %ebx               #  38    0x27a60  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %esi      #  39    0x27a62  4      OPC=movl_r32_m32    
  addl $0x4, %ebx               #  40    0x27a66  3      OPC=addl_r32_imm8   
  movl %r13d, %edi              #  41    0x27a69  3      OPC=movl_r32_r32    
  nop                           #  42    0x27a6c  1      OPC=nop             
  nop                           #  43    0x27a6d  1      OPC=nop             
  nop                           #  44    0x27a6e  1      OPC=nop             
  nop                           #  45    0x27a6f  1      OPC=nop             
  nop                           #  46    0x27a70  1      OPC=nop             
  nop                           #  47    0x27a71  1      OPC=nop             
  nop                           #  48    0x27a72  1      OPC=nop             
  nop                           #  49    0x27a73  1      OPC=nop             
  nop                           #  50    0x27a74  1      OPC=nop             
  nop                           #  51    0x27a75  1      OPC=nop             
  nop                           #  52    0x27a76  1      OPC=nop             
  nop                           #  53    0x27a77  1      OPC=nop             
  nop                           #  54    0x27a78  1      OPC=nop             
  nop                           #  55    0x27a79  1      OPC=nop             
  nop                           #  56    0x27a7a  1      OPC=nop             
  callq .List_Add               #  57    0x27a7b  5      OPC=callq_label     
  cmpl %ebx, %r12d              #  58    0x27a80  3      OPC=cmpl_r32_r32    
  jae .L_27a60                  #  59    0x27a83  2      OPC=jae_label       
  nop                           #  60    0x27a85  1      OPC=nop             
  nop                           #  61    0x27a86  1      OPC=nop             
  nop                           #  62    0x27a87  1      OPC=nop             
  nop                           #  63    0x27a88  1      OPC=nop             
  nop                           #  64    0x27a89  1      OPC=nop             
  nop                           #  65    0x27a8a  1      OPC=nop             
  nop                           #  66    0x27a8b  1      OPC=nop             
  nop                           #  67    0x27a8c  1      OPC=nop             
  nop                           #  68    0x27a8d  1      OPC=nop             
  nop                           #  69    0x27a8e  1      OPC=nop             
  nop                           #  70    0x27a8f  1      OPC=nop             
  nop                           #  71    0x27a90  1      OPC=nop             
  nop                           #  72    0x27a91  1      OPC=nop             
  nop                           #  73    0x27a92  1      OPC=nop             
  nop                           #  74    0x27a93  1      OPC=nop             
  nop                           #  75    0x27a94  1      OPC=nop             
  nop                           #  76    0x27a95  1      OPC=nop             
  nop                           #  77    0x27a96  1      OPC=nop             
  nop                           #  78    0x27a97  1      OPC=nop             
  nop                           #  79    0x27a98  1      OPC=nop             
  nop                           #  80    0x27a99  1      OPC=nop             
  nop                           #  81    0x27a9a  1      OPC=nop             
  nop                           #  82    0x27a9b  1      OPC=nop             
  nop                           #  83    0x27a9c  1      OPC=nop             
  nop                           #  84    0x27a9d  1      OPC=nop             
  nop                           #  85    0x27a9e  1      OPC=nop             
  nop                           #  86    0x27a9f  1      OPC=nop             
.L_27aa0:                       #        0x27aa0  0      OPC=<label>         
  popq %rbx                     #  87    0x27aa0  1      OPC=popq_r64_1      
  popq %r12                     #  88    0x27aa1  2      OPC=popq_r64_1      
  popq %r13                     #  89    0x27aa3  2      OPC=popq_r64_1      
  popq %r11                     #  90    0x27aa5  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  91    0x27aa7  7      OPC=andl_r32_imm32  
  nop                           #  92    0x27aae  1      OPC=nop             
  nop                           #  93    0x27aaf  1      OPC=nop             
  nop                           #  94    0x27ab0  1      OPC=nop             
  nop                           #  95    0x27ab1  1      OPC=nop             
  addq %r15, %r11               #  96    0x27ab2  3      OPC=addq_r64_r64    
  jmpq %r11                     #  97    0x27ab5  3      OPC=jmpq_r64        
  nop                           #  98    0x27ab8  1      OPC=nop             
  nop                           #  99    0x27ab9  1      OPC=nop             
  nop                           #  100   0x27aba  1      OPC=nop             
  nop                           #  101   0x27abb  1      OPC=nop             
  nop                           #  102   0x27abc  1      OPC=nop             
  nop                           #  103   0x27abd  1      OPC=nop             
  nop                           #  104   0x27abe  1      OPC=nop             
  nop                           #  105   0x27abf  1      OPC=nop             
  nop                           #  106   0x27ac0  1      OPC=nop             
  nop                           #  107   0x27ac1  1      OPC=nop             
  nop                           #  108   0x27ac2  1      OPC=nop             
  nop                           #  109   0x27ac3  1      OPC=nop             
  nop                           #  110   0x27ac4  1      OPC=nop             
  nop                           #  111   0x27ac5  1      OPC=nop             
  nop                           #  112   0x27ac6  1      OPC=nop             
                                                                             
.size List_Append, .-List_Append

