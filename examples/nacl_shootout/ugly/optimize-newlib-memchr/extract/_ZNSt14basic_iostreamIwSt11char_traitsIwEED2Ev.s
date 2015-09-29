  .text
  .globl _ZNSt14basic_iostreamIwSt11char_traitsIwEED2Ev
  .type _ZNSt14basic_iostreamIwSt11char_traitsIwEED2Ev, @function

#! file-offset 0x13bd80
#! rip-offset  0xfbd80
#! capacity    192 bytes

# Text                                            #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_iostreamIwSt11char_traitsIwEED2Ev:  #        0xfbd80  0      OPC=<label>         
  movl %esi, %esi                                 #  1     0xfbd80  2      OPC=movl_r32_r32    
  movl %edi, %edi                                 #  2     0xfbd82  2      OPC=movl_r32_r32    
  movl %esi, %esi                                 #  3     0xfbd84  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                        #  4     0xfbd86  4      OPC=movl_r32_m32    
  movl %esi, %esi                                 #  5     0xfbd8a  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rsi,1), %edx                    #  6     0xfbd8c  5      OPC=movl_r32_m32    
  subl $0xc, %eax                                 #  7     0xfbd91  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                 #  8     0xfbd94  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                        #  9     0xfbd96  4      OPC=movl_r32_m32    
  addl %edi, %eax                                 #  10    0xfbd9a  2      OPC=addl_r32_r32    
  nop                                             #  11    0xfbd9c  1      OPC=nop             
  nop                                             #  12    0xfbd9d  1      OPC=nop             
  nop                                             #  13    0xfbd9e  1      OPC=nop             
  nop                                             #  14    0xfbd9f  1      OPC=nop             
  movl %eax, %eax                                 #  15    0xfbda0  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                        #  16    0xfbda2  4      OPC=movl_m32_r32    
  movl %esi, %esi                                 #  17    0xfbda6  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rsi,1), %eax                    #  18    0xfbda8  5      OPC=movl_r32_m32    
  leal 0x8(%rdi), %edx                            #  19    0xfbdad  3      OPC=leal_r32_m16    
  movl %edi, %edi                                 #  20    0xfbdb0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                     #  21    0xfbdb2  5      OPC=movl_m32_r32    
  leal 0xc(%rsi), %eax                            #  22    0xfbdb7  3      OPC=leal_r32_m16    
  addl $0x4, %esi                                 #  23    0xfbdba  3      OPC=addl_r32_imm8   
  nop                                             #  24    0xfbdbd  1      OPC=nop             
  nop                                             #  25    0xfbdbe  1      OPC=nop             
  nop                                             #  26    0xfbdbf  1      OPC=nop             
  movl %eax, %eax                                 #  27    0xfbdc0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx                        #  28    0xfbdc2  4      OPC=movl_r32_m32    
  movl %eax, %eax                                 #  29    0xfbdc6  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax                     #  30    0xfbdc8  5      OPC=movl_r32_m32    
  movl %edx, %edx                                 #  31    0xfbdcd  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)                        #  32    0xfbdcf  4      OPC=movl_m32_r32    
  subl $0xc, %ecx                                 #  33    0xfbdd3  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx                                 #  34    0xfbdd6  2      OPC=movl_r32_r32    
  addl (%r15,%rcx,1), %edx                        #  35    0xfbdd8  4      OPC=addl_r32_m32    
  nop                                             #  36    0xfbddc  1      OPC=nop             
  nop                                             #  37    0xfbddd  1      OPC=nop             
  nop                                             #  38    0xfbdde  1      OPC=nop             
  nop                                             #  39    0xfbddf  1      OPC=nop             
  movl %edx, %edx                                 #  40    0xfbde0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdx,1)                        #  41    0xfbde2  4      OPC=movl_m32_r32    
  movl %esi, %esi                                 #  42    0xfbde6  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                        #  43    0xfbde8  4      OPC=movl_r32_m32    
  movl %esi, %esi                                 #  44    0xfbdec  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx                     #  45    0xfbdee  5      OPC=movl_r32_m32    
  movl %edi, %edi                                 #  46    0xfbdf3  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                        #  47    0xfbdf5  4      OPC=movl_m32_r32    
  subl $0xc, %eax                                 #  48    0xfbdf9  3      OPC=subl_r32_imm8   
  nop                                             #  49    0xfbdfc  1      OPC=nop             
  nop                                             #  50    0xfbdfd  1      OPC=nop             
  nop                                             #  51    0xfbdfe  1      OPC=nop             
  nop                                             #  52    0xfbdff  1      OPC=nop             
  movl %eax, %eax                                 #  53    0xfbe00  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                        #  54    0xfbe02  4      OPC=movl_r32_m32    
  movl %edi, %edi                                 #  55    0xfbe06  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)                     #  56    0xfbe08  9      OPC=movl_m32_imm32  
  addl %edi, %eax                                 #  57    0xfbe11  2      OPC=addl_r32_r32    
  movl %eax, %eax                                 #  58    0xfbe13  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                        #  59    0xfbe15  4      OPC=movl_m32_r32    
  popq %r11                                       #  60    0xfbe19  2      OPC=popq_r64_1      
  nop                                             #  61    0xfbe1b  1      OPC=nop             
  nop                                             #  62    0xfbe1c  1      OPC=nop             
  nop                                             #  63    0xfbe1d  1      OPC=nop             
  nop                                             #  64    0xfbe1e  1      OPC=nop             
  nop                                             #  65    0xfbe1f  1      OPC=nop             
  andl $0xffffffe0, %r11d                         #  66    0xfbe20  7      OPC=andl_r32_imm32  
  nop                                             #  67    0xfbe27  1      OPC=nop             
  nop                                             #  68    0xfbe28  1      OPC=nop             
  nop                                             #  69    0xfbe29  1      OPC=nop             
  nop                                             #  70    0xfbe2a  1      OPC=nop             
  addq %r15, %r11                                 #  71    0xfbe2b  3      OPC=addq_r64_r64    
  jmpq %r11                                       #  72    0xfbe2e  3      OPC=jmpq_r64        
  nop                                             #  73    0xfbe31  1      OPC=nop             
  nop                                             #  74    0xfbe32  1      OPC=nop             
  nop                                             #  75    0xfbe33  1      OPC=nop             
  nop                                             #  76    0xfbe34  1      OPC=nop             
  nop                                             #  77    0xfbe35  1      OPC=nop             
  nop                                             #  78    0xfbe36  1      OPC=nop             
  nop                                             #  79    0xfbe37  1      OPC=nop             
  nop                                             #  80    0xfbe38  1      OPC=nop             
  nop                                             #  81    0xfbe39  1      OPC=nop             
  nop                                             #  82    0xfbe3a  1      OPC=nop             
  nop                                             #  83    0xfbe3b  1      OPC=nop             
  nop                                             #  84    0xfbe3c  1      OPC=nop             
  nop                                             #  85    0xfbe3d  1      OPC=nop             
  nop                                             #  86    0xfbe3e  1      OPC=nop             
  nop                                             #  87    0xfbe3f  1      OPC=nop             
  nop                                             #  88    0xfbe40  1      OPC=nop             
  nop                                             #  89    0xfbe41  1      OPC=nop             
  nop                                             #  90    0xfbe42  1      OPC=nop             
  nop                                             #  91    0xfbe43  1      OPC=nop             
  nop                                             #  92    0xfbe44  1      OPC=nop             
  nop                                             #  93    0xfbe45  1      OPC=nop             
  nop                                             #  94    0xfbe46  1      OPC=nop             
                                                                                               
.size _ZNSt14basic_iostreamIwSt11char_traitsIwEED2Ev, .-_ZNSt14basic_iostreamIwSt11char_traitsIwEED2Ev

