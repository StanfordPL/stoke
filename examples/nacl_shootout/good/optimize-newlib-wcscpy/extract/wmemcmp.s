  .text
  .globl wmemcmp
  .type wmemcmp, @function

#! file-offset 0x183ec0
#! rip-offset  0x143ec0
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.wmemcmp:                       #        0x143ec0  0      OPC=<label>         
  testl %edx, %edx              #  1     0x143ec0  2      OPC=testl_r32_r32   
  movl %edi, %edi               #  2     0x143ec2  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  3     0x143ec4  2      OPC=movl_r32_r32    
  je .L_143f20                  #  4     0x143ec6  2      OPC=je_label        
  movl %edi, %edi               #  5     0x143ec8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %r8d      #  6     0x143eca  4      OPC=movl_r32_m32    
  movl %esi, %esi               #  7     0x143ece  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %ecx      #  8     0x143ed0  4      OPC=movl_r32_m32    
  xorl %eax, %eax               #  9     0x143ed4  2      OPC=xorl_r32_r32    
  cmpl %ecx, %r8d               #  10    0x143ed6  3      OPC=cmpl_r32_r32    
  je .L_143f00                  #  11    0x143ed9  2      OPC=je_label        
  jmpq .L_143f40                #  12    0x143edb  2      OPC=jmpq_label      
  nop                           #  13    0x143edd  1      OPC=nop             
  nop                           #  14    0x143ede  1      OPC=nop             
  nop                           #  15    0x143edf  1      OPC=nop             
.L_143ee0:                      #        0x143ee0  0      OPC=<label>         
  addl $0x4, %edi               #  16    0x143ee0  3      OPC=addl_r32_imm8   
  addl $0x4, %esi               #  17    0x143ee3  3      OPC=addl_r32_imm8   
  movl %edi, %edi               #  18    0x143ee6  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %r8d      #  19    0x143ee8  4      OPC=movl_r32_m32    
  movl %esi, %esi               #  20    0x143eec  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %ecx      #  21    0x143eee  4      OPC=movl_r32_m32    
  cmpl %ecx, %r8d               #  22    0x143ef2  3      OPC=cmpl_r32_r32    
  jne .L_143f40                 #  23    0x143ef5  2      OPC=jne_label       
  nop                           #  24    0x143ef7  1      OPC=nop             
  nop                           #  25    0x143ef8  1      OPC=nop             
  nop                           #  26    0x143ef9  1      OPC=nop             
  nop                           #  27    0x143efa  1      OPC=nop             
  nop                           #  28    0x143efb  1      OPC=nop             
  nop                           #  29    0x143efc  1      OPC=nop             
  nop                           #  30    0x143efd  1      OPC=nop             
  nop                           #  31    0x143efe  1      OPC=nop             
  nop                           #  32    0x143eff  1      OPC=nop             
.L_143f00:                      #        0x143f00  0      OPC=<label>         
  addl $0x1, %eax               #  33    0x143f00  3      OPC=addl_r32_imm8   
  cmpl %eax, %edx               #  34    0x143f03  2      OPC=cmpl_r32_r32    
  ja .L_143ee0                  #  35    0x143f05  2      OPC=ja_label        
  nop                           #  36    0x143f07  1      OPC=nop             
  nop                           #  37    0x143f08  1      OPC=nop             
  nop                           #  38    0x143f09  1      OPC=nop             
  nop                           #  39    0x143f0a  1      OPC=nop             
  nop                           #  40    0x143f0b  1      OPC=nop             
  nop                           #  41    0x143f0c  1      OPC=nop             
  nop                           #  42    0x143f0d  1      OPC=nop             
  nop                           #  43    0x143f0e  1      OPC=nop             
  nop                           #  44    0x143f0f  1      OPC=nop             
  nop                           #  45    0x143f10  1      OPC=nop             
  nop                           #  46    0x143f11  1      OPC=nop             
  nop                           #  47    0x143f12  1      OPC=nop             
  nop                           #  48    0x143f13  1      OPC=nop             
  nop                           #  49    0x143f14  1      OPC=nop             
  nop                           #  50    0x143f15  1      OPC=nop             
  nop                           #  51    0x143f16  1      OPC=nop             
  nop                           #  52    0x143f17  1      OPC=nop             
  nop                           #  53    0x143f18  1      OPC=nop             
  nop                           #  54    0x143f19  1      OPC=nop             
  nop                           #  55    0x143f1a  1      OPC=nop             
  nop                           #  56    0x143f1b  1      OPC=nop             
  nop                           #  57    0x143f1c  1      OPC=nop             
  nop                           #  58    0x143f1d  1      OPC=nop             
  nop                           #  59    0x143f1e  1      OPC=nop             
  nop                           #  60    0x143f1f  1      OPC=nop             
.L_143f20:                      #        0x143f20  0      OPC=<label>         
  xorl %eax, %eax               #  61    0x143f20  2      OPC=xorl_r32_r32    
  popq %r11                     #  62    0x143f22  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  63    0x143f24  7      OPC=andl_r32_imm32  
  nop                           #  64    0x143f2b  1      OPC=nop             
  nop                           #  65    0x143f2c  1      OPC=nop             
  nop                           #  66    0x143f2d  1      OPC=nop             
  nop                           #  67    0x143f2e  1      OPC=nop             
  addq %r15, %r11               #  68    0x143f2f  3      OPC=addq_r64_r64    
  jmpq %r11                     #  69    0x143f32  3      OPC=jmpq_r64        
  nop                           #  70    0x143f35  1      OPC=nop             
  nop                           #  71    0x143f36  1      OPC=nop             
  nop                           #  72    0x143f37  1      OPC=nop             
  nop                           #  73    0x143f38  1      OPC=nop             
  nop                           #  74    0x143f39  1      OPC=nop             
  nop                           #  75    0x143f3a  1      OPC=nop             
  nop                           #  76    0x143f3b  1      OPC=nop             
  nop                           #  77    0x143f3c  1      OPC=nop             
  nop                           #  78    0x143f3d  1      OPC=nop             
  nop                           #  79    0x143f3e  1      OPC=nop             
  nop                           #  80    0x143f3f  1      OPC=nop             
  nop                           #  81    0x143f40  1      OPC=nop             
  nop                           #  82    0x143f41  1      OPC=nop             
  nop                           #  83    0x143f42  1      OPC=nop             
  nop                           #  84    0x143f43  1      OPC=nop             
  nop                           #  85    0x143f44  1      OPC=nop             
  nop                           #  86    0x143f45  1      OPC=nop             
  nop                           #  87    0x143f46  1      OPC=nop             
.L_143f40:                      #        0x143f47  0      OPC=<label>         
  xorl %eax, %eax               #  88    0x143f47  2      OPC=xorl_r32_r32    
  cmpl %ecx, %r8d               #  89    0x143f49  3      OPC=cmpl_r32_r32    
  setg %al                      #  90    0x143f4c  3      OPC=setg_r8         
  leal -0x1(%rax,%rax,1), %eax  #  91    0x143f4f  4      OPC=leal_r32_m16    
  popq %r11                     #  92    0x143f53  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  93    0x143f55  7      OPC=andl_r32_imm32  
  nop                           #  94    0x143f5c  1      OPC=nop             
  nop                           #  95    0x143f5d  1      OPC=nop             
  nop                           #  96    0x143f5e  1      OPC=nop             
  nop                           #  97    0x143f5f  1      OPC=nop             
  addq %r15, %r11               #  98    0x143f60  3      OPC=addq_r64_r64    
  jmpq %r11                     #  99    0x143f63  3      OPC=jmpq_r64        
  nop                           #  100   0x143f66  1      OPC=nop             
  nop                           #  101   0x143f67  1      OPC=nop             
  nop                           #  102   0x143f68  1      OPC=nop             
  nop                           #  103   0x143f69  1      OPC=nop             
  nop                           #  104   0x143f6a  1      OPC=nop             
  nop                           #  105   0x143f6b  1      OPC=nop             
  nop                           #  106   0x143f6c  1      OPC=nop             
  nop                           #  107   0x143f6d  1      OPC=nop             
                                                                              
.size wmemcmp, .-wmemcmp

