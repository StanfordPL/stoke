  .text
  .globl d_make_name
  .type d_make_name, @function

#! file-offset 0x13de40
#! rip-offset  0xfde40
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.d_make_name:                   #        0xfde40  0      OPC=<label>         
  movl %edi, %edi               #  1     0xfde40  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  2     0xfde42  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0xfde44  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %ecx  #  4     0xfde46  5      OPC=movl_r32_m32    
  movl %edi, %edi               #  5     0xfde4b  2      OPC=movl_r32_r32    
  cmpl 0x18(%r15,%rdi,1), %ecx  #  6     0xfde4d  5      OPC=cmpl_r32_m32    
  jge .L_fde80                  #  7     0xfde52  2      OPC=jge_label       
  leal (%rcx,%rcx,2), %eax      #  8     0xfde54  3      OPC=leal_r32_m16    
  addl $0x1, %ecx               #  9     0xfde57  3      OPC=addl_r32_imm8   
  nop                           #  10    0xfde5a  1      OPC=nop             
  nop                           #  11    0xfde5b  1      OPC=nop             
  nop                           #  12    0xfde5c  1      OPC=nop             
  nop                           #  13    0xfde5d  1      OPC=nop             
  nop                           #  14    0xfde5e  1      OPC=nop             
  nop                           #  15    0xfde5f  1      OPC=nop             
  movl %edi, %edi               #  16    0xfde60  2      OPC=movl_r32_r32    
  movl %ecx, 0x14(%r15,%rdi,1)  #  17    0xfde62  5      OPC=movl_m32_r32    
  shll $0x2, %eax               #  18    0xfde67  3      OPC=shll_r32_imm8   
  movl %edi, %edi               #  19    0xfde6a  2      OPC=movl_r32_r32    
  addl 0x10(%r15,%rdi,1), %eax  #  20    0xfde6c  5      OPC=addl_r32_m32    
  testq %rax, %rax              #  21    0xfde71  3      OPC=testq_r64_r64   
  jne .L_fdea0                  #  22    0xfde74  2      OPC=jne_label       
  nop                           #  23    0xfde76  1      OPC=nop             
  nop                           #  24    0xfde77  1      OPC=nop             
  nop                           #  25    0xfde78  1      OPC=nop             
  nop                           #  26    0xfde79  1      OPC=nop             
  nop                           #  27    0xfde7a  1      OPC=nop             
  nop                           #  28    0xfde7b  1      OPC=nop             
  nop                           #  29    0xfde7c  1      OPC=nop             
  nop                           #  30    0xfde7d  1      OPC=nop             
  nop                           #  31    0xfde7e  1      OPC=nop             
  nop                           #  32    0xfde7f  1      OPC=nop             
.L_fde80:                       #        0xfde80  0      OPC=<label>         
  xorl %eax, %eax               #  33    0xfde80  2      OPC=xorl_r32_r32    
  popq %r11                     #  34    0xfde82  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  35    0xfde84  7      OPC=andl_r32_imm32  
  nop                           #  36    0xfde8b  1      OPC=nop             
  nop                           #  37    0xfde8c  1      OPC=nop             
  nop                           #  38    0xfde8d  1      OPC=nop             
  nop                           #  39    0xfde8e  1      OPC=nop             
  addq %r15, %r11               #  40    0xfde8f  3      OPC=addq_r64_r64    
  jmpq %r11                     #  41    0xfde92  3      OPC=jmpq_r64        
  nop                           #  42    0xfde95  1      OPC=nop             
  nop                           #  43    0xfde96  1      OPC=nop             
  nop                           #  44    0xfde97  1      OPC=nop             
  nop                           #  45    0xfde98  1      OPC=nop             
  nop                           #  46    0xfde99  1      OPC=nop             
  nop                           #  47    0xfde9a  1      OPC=nop             
  nop                           #  48    0xfde9b  1      OPC=nop             
  nop                           #  49    0xfde9c  1      OPC=nop             
  nop                           #  50    0xfde9d  1      OPC=nop             
  nop                           #  51    0xfde9e  1      OPC=nop             
  nop                           #  52    0xfde9f  1      OPC=nop             
  nop                           #  53    0xfdea0  1      OPC=nop             
  nop                           #  54    0xfdea1  1      OPC=nop             
  nop                           #  55    0xfdea2  1      OPC=nop             
  nop                           #  56    0xfdea3  1      OPC=nop             
  nop                           #  57    0xfdea4  1      OPC=nop             
  nop                           #  58    0xfdea5  1      OPC=nop             
  nop                           #  59    0xfdea6  1      OPC=nop             
.L_fdea0:                       #        0xfdea7  0      OPC=<label>         
  testq %rsi, %rsi              #  60    0xfdea7  3      OPC=testq_r64_r64   
  je .L_fde80                   #  61    0xfdeaa  2      OPC=je_label        
  testl %edx, %edx              #  62    0xfdeac  2      OPC=testl_r32_r32   
  je .L_fde80                   #  63    0xfdeae  2      OPC=je_label        
  movl %eax, %eax               #  64    0xfdeb0  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rax,1)      #  65    0xfdeb2  8      OPC=movl_m32_imm32  
  movl %eax, %eax               #  66    0xfdeba  2      OPC=movl_r32_r32    
  movl %esi, 0x4(%r15,%rax,1)   #  67    0xfdebc  5      OPC=movl_m32_r32    
  nop                           #  68    0xfdec1  1      OPC=nop             
  nop                           #  69    0xfdec2  1      OPC=nop             
  nop                           #  70    0xfdec3  1      OPC=nop             
  nop                           #  71    0xfdec4  1      OPC=nop             
  nop                           #  72    0xfdec5  1      OPC=nop             
  nop                           #  73    0xfdec6  1      OPC=nop             
  movl %eax, %eax               #  74    0xfdec7  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rax,1)   #  75    0xfdec9  5      OPC=movl_m32_r32    
  popq %r11                     #  76    0xfdece  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  77    0xfded0  7      OPC=andl_r32_imm32  
  nop                           #  78    0xfded7  1      OPC=nop             
  nop                           #  79    0xfded8  1      OPC=nop             
  nop                           #  80    0xfded9  1      OPC=nop             
  nop                           #  81    0xfdeda  1      OPC=nop             
  addq %r15, %r11               #  82    0xfdedb  3      OPC=addq_r64_r64    
  jmpq %r11                     #  83    0xfdede  3      OPC=jmpq_r64        
  nop                           #  84    0xfdee1  1      OPC=nop             
  nop                           #  85    0xfdee2  1      OPC=nop             
  nop                           #  86    0xfdee3  1      OPC=nop             
  nop                           #  87    0xfdee4  1      OPC=nop             
  nop                           #  88    0xfdee5  1      OPC=nop             
  nop                           #  89    0xfdee6  1      OPC=nop             
  nop                           #  90    0xfdee7  1      OPC=nop             
  nop                           #  91    0xfdee8  1      OPC=nop             
  nop                           #  92    0xfdee9  1      OPC=nop             
  nop                           #  93    0xfdeea  1      OPC=nop             
  nop                           #  94    0xfdeeb  1      OPC=nop             
  nop                           #  95    0xfdeec  1      OPC=nop             
  nop                           #  96    0xfdeed  1      OPC=nop             
                                                                             
.size d_make_name, .-d_make_name

