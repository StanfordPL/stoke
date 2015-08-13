  .text
  .globl pthread_key_create
  .type pthread_key_create, @function

#! file-offset 0x6e000
#! rip-offset  0x2e000
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode                
.pthread_key_create:                  #        0x2e000  0      OPC=<label>           
  movl %edi, %r10d                    #  1     0x2e000  3      OPC=movl_r32_r32      
  movl %esi, %r9d                     #  2     0x2e003  3      OPC=movl_r32_r32      
  xorl %edx, %edx                     #  3     0x2e006  2      OPC=xorl_r32_r32      
  nop                                 #  4     0x2e008  1      OPC=nop               
  nop                                 #  5     0x2e009  1      OPC=nop               
  nop                                 #  6     0x2e00a  1      OPC=nop               
  nop                                 #  7     0x2e00b  1      OPC=nop               
  nop                                 #  8     0x2e00c  1      OPC=nop               
  nop                                 #  9     0x2e00d  1      OPC=nop               
  nop                                 #  10    0x2e00e  1      OPC=nop               
  nop                                 #  11    0x2e00f  1      OPC=nop               
  nop                                 #  12    0x2e010  1      OPC=nop               
  nop                                 #  13    0x2e011  1      OPC=nop               
  nop                                 #  14    0x2e012  1      OPC=nop               
  nop                                 #  15    0x2e013  1      OPC=nop               
  nop                                 #  16    0x2e014  1      OPC=nop               
  nop                                 #  17    0x2e015  1      OPC=nop               
  nop                                 #  18    0x2e016  1      OPC=nop               
  nop                                 #  19    0x2e017  1      OPC=nop               
  nop                                 #  20    0x2e018  1      OPC=nop               
  nop                                 #  21    0x2e019  1      OPC=nop               
  nop                                 #  22    0x2e01a  1      OPC=nop               
  nop                                 #  23    0x2e01b  1      OPC=nop               
  nop                                 #  24    0x2e01c  1      OPC=nop               
  nop                                 #  25    0x2e01d  1      OPC=nop               
  nop                                 #  26    0x2e01e  1      OPC=nop               
  nop                                 #  27    0x2e01f  1      OPC=nop               
.L_2e020:                             #        0x2e020  0      OPC=<label>           
  leal (,%rdx,8), %edi                #  28    0x2e020  7      OPC=leal_r32_m16      
  movslq %edi, %rsi                   #  29    0x2e027  3      OPC=movslq_r64_r32    
  leaq 0x10071624(%rsi), %rax         #  30    0x2e02a  7      OPC=leaq_r64_m16      
  movl %eax, %eax                     #  31    0x2e031  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %ecx            #  32    0x2e033  4      OPC=movl_r32_m32      
  testb $0x1, %cl                     #  33    0x2e037  3      OPC=testb_r8_imm8     
  jne .L_2e060                        #  34    0x2e03a  2      OPC=jne_label         
  cmpl $0xfffffffe, %ecx              #  35    0x2e03c  6      OPC=cmpl_r32_imm32    
  nop                                 #  36    0x2e042  1      OPC=nop               
  nop                                 #  37    0x2e043  1      OPC=nop               
  nop                                 #  38    0x2e044  1      OPC=nop               
  nop                                 #  39    0x2e045  1      OPC=nop               
  je .L_2e060                         #  40    0x2e046  2      OPC=je_label          
  leal 0x1(%rcx), %r8d                #  41    0x2e048  4      OPC=leal_r32_m16      
  addl $0x10071624, %edi              #  42    0x2e04c  6      OPC=addl_r32_imm32    
  movl %ecx, %eax                     #  43    0x2e052  2      OPC=movl_r32_r32      
  movl %edi, %edi                     #  44    0x2e054  2      OPC=movl_r32_r32      
  lock                                #  45    0x2e056  1      OPC=lock              
  cmpxchgl %r8d, (%r15,%rdi,1)        #  46    0x2e057  5      OPC=cmpxchgl_m32_r32  
  nop                                 #  47    0x2e05c  1      OPC=nop               
  cmpl %ecx, %eax                     #  48    0x2e05d  2      OPC=cmpl_r32_r32      
  je .L_2e080                         #  49    0x2e05f  2      OPC=je_label          
  nop                                 #  50    0x2e061  1      OPC=nop               
  nop                                 #  51    0x2e062  1      OPC=nop               
  nop                                 #  52    0x2e063  1      OPC=nop               
  nop                                 #  53    0x2e064  1      OPC=nop               
  nop                                 #  54    0x2e065  1      OPC=nop               
  nop                                 #  55    0x2e066  1      OPC=nop               
.L_2e060:                             #        0x2e067  0      OPC=<label>           
  addl $0x1, %edx                     #  56    0x2e067  3      OPC=addl_r32_imm8     
  cmpl $0x200, %edx                   #  57    0x2e06a  6      OPC=cmpl_r32_imm32    
  jne .L_2e020                        #  58    0x2e070  2      OPC=jne_label         
  movl $0xb, %eax                     #  59    0x2e072  5      OPC=movl_r32_imm32    
  popq %r11                           #  60    0x2e077  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d             #  61    0x2e079  7      OPC=andl_r32_imm32    
  nop                                 #  62    0x2e080  1      OPC=nop               
  nop                                 #  63    0x2e081  1      OPC=nop               
  nop                                 #  64    0x2e082  1      OPC=nop               
  nop                                 #  65    0x2e083  1      OPC=nop               
  addq %r15, %r11                     #  66    0x2e084  3      OPC=addq_r64_r64      
  jmpq %r11                           #  67    0x2e087  3      OPC=jmpq_r64          
  nop                                 #  68    0x2e08a  1      OPC=nop               
  nop                                 #  69    0x2e08b  1      OPC=nop               
  nop                                 #  70    0x2e08c  1      OPC=nop               
  nop                                 #  71    0x2e08d  1      OPC=nop               
.L_2e080:                             #        0x2e08e  0      OPC=<label>           
  movl %r10d, %r10d                   #  72    0x2e08e  3      OPC=movl_r32_r32      
  movl %edx, (%r15,%r10,1)            #  73    0x2e091  4      OPC=movl_m32_r32      
  movl %esi, %esi                     #  74    0x2e095  2      OPC=movl_r32_r32      
  movl %r9d, 0x10071620(%r15,%rsi,1)  #  75    0x2e097  8      OPC=movl_m32_r32      
  xorl %eax, %eax                     #  76    0x2e09f  2      OPC=xorl_r32_r32      
  popq %r11                           #  77    0x2e0a1  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d             #  78    0x2e0a3  7      OPC=andl_r32_imm32    
  nop                                 #  79    0x2e0aa  1      OPC=nop               
  nop                                 #  80    0x2e0ab  1      OPC=nop               
  nop                                 #  81    0x2e0ac  1      OPC=nop               
  nop                                 #  82    0x2e0ad  1      OPC=nop               
  addq %r15, %r11                     #  83    0x2e0ae  3      OPC=addq_r64_r64      
  jmpq %r11                           #  84    0x2e0b1  3      OPC=jmpq_r64          
  nop                                 #  85    0x2e0b4  1      OPC=nop               
                                                                                     
.size pthread_key_create, .-pthread_key_create

