  .text
  .globl pthread_key_create
  .type pthread_key_create, @function

#! file-offset 0x6ea20
#! rip-offset  0x2ea20
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode                
.pthread_key_create:                  #        0x2ea20  0      OPC=<label>           
  movl %edi, %r10d                    #  1     0x2ea20  3      OPC=movl_r32_r32      
  movl %esi, %r9d                     #  2     0x2ea23  3      OPC=movl_r32_r32      
  xorl %edx, %edx                     #  3     0x2ea26  2      OPC=xorl_r32_r32      
  nop                                 #  4     0x2ea28  1      OPC=nop               
  nop                                 #  5     0x2ea29  1      OPC=nop               
  nop                                 #  6     0x2ea2a  1      OPC=nop               
  nop                                 #  7     0x2ea2b  1      OPC=nop               
  nop                                 #  8     0x2ea2c  1      OPC=nop               
  nop                                 #  9     0x2ea2d  1      OPC=nop               
  nop                                 #  10    0x2ea2e  1      OPC=nop               
  nop                                 #  11    0x2ea2f  1      OPC=nop               
  nop                                 #  12    0x2ea30  1      OPC=nop               
  nop                                 #  13    0x2ea31  1      OPC=nop               
  nop                                 #  14    0x2ea32  1      OPC=nop               
  nop                                 #  15    0x2ea33  1      OPC=nop               
  nop                                 #  16    0x2ea34  1      OPC=nop               
  nop                                 #  17    0x2ea35  1      OPC=nop               
  nop                                 #  18    0x2ea36  1      OPC=nop               
  nop                                 #  19    0x2ea37  1      OPC=nop               
  nop                                 #  20    0x2ea38  1      OPC=nop               
  nop                                 #  21    0x2ea39  1      OPC=nop               
  nop                                 #  22    0x2ea3a  1      OPC=nop               
  nop                                 #  23    0x2ea3b  1      OPC=nop               
  nop                                 #  24    0x2ea3c  1      OPC=nop               
  nop                                 #  25    0x2ea3d  1      OPC=nop               
  nop                                 #  26    0x2ea3e  1      OPC=nop               
  nop                                 #  27    0x2ea3f  1      OPC=nop               
.L_2ea40:                             #        0x2ea40  0      OPC=<label>           
  leal (,%rdx,8), %edi                #  28    0x2ea40  7      OPC=leal_r32_m16      
  movslq %edi, %rsi                   #  29    0x2ea47  3      OPC=movslq_r64_r32    
  leaq 0x10071624(%rsi), %rax         #  30    0x2ea4a  7      OPC=leaq_r64_m16      
  movl %eax, %eax                     #  31    0x2ea51  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %ecx            #  32    0x2ea53  4      OPC=movl_r32_m32      
  testb $0x1, %cl                     #  33    0x2ea57  3      OPC=testb_r8_imm8     
  jne .L_2ea80                        #  34    0x2ea5a  2      OPC=jne_label         
  cmpl $0xfffffffe, %ecx              #  35    0x2ea5c  6      OPC=cmpl_r32_imm32    
  nop                                 #  36    0x2ea62  1      OPC=nop               
  nop                                 #  37    0x2ea63  1      OPC=nop               
  nop                                 #  38    0x2ea64  1      OPC=nop               
  nop                                 #  39    0x2ea65  1      OPC=nop               
  je .L_2ea80                         #  40    0x2ea66  2      OPC=je_label          
  leal 0x1(%rcx), %r8d                #  41    0x2ea68  4      OPC=leal_r32_m16      
  addl $0x10071624, %edi              #  42    0x2ea6c  6      OPC=addl_r32_imm32    
  movl %ecx, %eax                     #  43    0x2ea72  2      OPC=movl_r32_r32      
  movl %edi, %edi                     #  44    0x2ea74  2      OPC=movl_r32_r32      
  lock                                #  45    0x2ea76  1      OPC=lock              
  cmpxchgl %r8d, (%r15,%rdi,1)        #  46    0x2ea77  5      OPC=cmpxchgl_m32_r32  
  nop                                 #  47    0x2ea7c  1      OPC=nop               
  cmpl %ecx, %eax                     #  48    0x2ea7d  2      OPC=cmpl_r32_r32      
  je .L_2eaa0                         #  49    0x2ea7f  2      OPC=je_label          
  nop                                 #  50    0x2ea81  1      OPC=nop               
  nop                                 #  51    0x2ea82  1      OPC=nop               
  nop                                 #  52    0x2ea83  1      OPC=nop               
  nop                                 #  53    0x2ea84  1      OPC=nop               
  nop                                 #  54    0x2ea85  1      OPC=nop               
  nop                                 #  55    0x2ea86  1      OPC=nop               
.L_2ea80:                             #        0x2ea87  0      OPC=<label>           
  addl $0x1, %edx                     #  56    0x2ea87  3      OPC=addl_r32_imm8     
  cmpl $0x200, %edx                   #  57    0x2ea8a  6      OPC=cmpl_r32_imm32    
  jne .L_2ea40                        #  58    0x2ea90  2      OPC=jne_label         
  movl $0xb, %eax                     #  59    0x2ea92  5      OPC=movl_r32_imm32    
  popq %r11                           #  60    0x2ea97  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d             #  61    0x2ea99  7      OPC=andl_r32_imm32    
  nop                                 #  62    0x2eaa0  1      OPC=nop               
  nop                                 #  63    0x2eaa1  1      OPC=nop               
  nop                                 #  64    0x2eaa2  1      OPC=nop               
  nop                                 #  65    0x2eaa3  1      OPC=nop               
  addq %r15, %r11                     #  66    0x2eaa4  3      OPC=addq_r64_r64      
  jmpq %r11                           #  67    0x2eaa7  3      OPC=jmpq_r64          
  nop                                 #  68    0x2eaaa  1      OPC=nop               
  nop                                 #  69    0x2eaab  1      OPC=nop               
  nop                                 #  70    0x2eaac  1      OPC=nop               
  nop                                 #  71    0x2eaad  1      OPC=nop               
.L_2eaa0:                             #        0x2eaae  0      OPC=<label>           
  movl %r10d, %r10d                   #  72    0x2eaae  3      OPC=movl_r32_r32      
  movl %edx, (%r15,%r10,1)            #  73    0x2eab1  4      OPC=movl_m32_r32      
  movl %esi, %esi                     #  74    0x2eab5  2      OPC=movl_r32_r32      
  movl %r9d, 0x10071620(%r15,%rsi,1)  #  75    0x2eab7  8      OPC=movl_m32_r32      
  xorl %eax, %eax                     #  76    0x2eabf  2      OPC=xorl_r32_r32      
  popq %r11                           #  77    0x2eac1  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d             #  78    0x2eac3  7      OPC=andl_r32_imm32    
  nop                                 #  79    0x2eaca  1      OPC=nop               
  nop                                 #  80    0x2eacb  1      OPC=nop               
  nop                                 #  81    0x2eacc  1      OPC=nop               
  nop                                 #  82    0x2eacd  1      OPC=nop               
  addq %r15, %r11                     #  83    0x2eace  3      OPC=addq_r64_r64      
  jmpq %r11                           #  84    0x2ead1  3      OPC=jmpq_r64          
  nop                                 #  85    0x2ead4  1      OPC=nop               
                                                                                     
.size pthread_key_create, .-pthread_key_create

