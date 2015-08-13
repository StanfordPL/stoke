  .text
  .globl DestroyVariable
  .type DestroyVariable, @function

#! file-offset 0x67d20
#! rip-offset  0x27d20
#! capacity    192 bytes

# Text                         #  Line  RIP      Bytes  Opcode             
.DestroyVariable:              #        0x27d20  0      OPC=<label>        
  pushq %rbx                   #  1     0x27d20  1      OPC=pushq_r64_1    
  movl %edi, %ebx              #  2     0x27d21  2      OPC=movl_r32_r32   
  movl %ebx, %ebx              #  3     0x27d23  2      OPC=movl_r32_r32   
  movl 0x4(%r15,%rbx,1), %eax  #  4     0x27d25  5      OPC=movl_r32_m32   
  movl %eax, %eax              #  5     0x27d2a  2      OPC=movl_r32_r32   
  movl 0x8(%r15,%rax,1), %edx  #  6     0x27d2c  5      OPC=movl_r32_m32   
  movl %eax, %eax              #  7     0x27d31  2      OPC=movl_r32_r32   
  cmpl %edx, 0xc(%r15,%rax,1)  #  8     0x27d33  5      OPC=cmpl_m32_r32   
  jge .L_27d80                 #  9     0x27d38  2      OPC=jge_label      
  nop                          #  10    0x27d3a  1      OPC=nop            
  nop                          #  11    0x27d3b  1      OPC=nop            
  nop                          #  12    0x27d3c  1      OPC=nop            
  nop                          #  13    0x27d3d  1      OPC=nop            
  nop                          #  14    0x27d3e  1      OPC=nop            
  nop                          #  15    0x27d3f  1      OPC=nop            
.L_27d40:                      #        0x27d40  0      OPC=<label>        
  movl %ebx, %esi              #  16    0x27d40  2      OPC=movl_r32_r32   
  movl 0x100493f8(%rip), %edi  #  17    0x27d42  6      OPC=movl_r32_m32   
  nop                          #  18    0x27d48  1      OPC=nop            
  nop                          #  19    0x27d49  1      OPC=nop            
  nop                          #  20    0x27d4a  1      OPC=nop            
  nop                          #  21    0x27d4b  1      OPC=nop            
  nop                          #  22    0x27d4c  1      OPC=nop            
  nop                          #  23    0x27d4d  1      OPC=nop            
  nop                          #  24    0x27d4e  1      OPC=nop            
  nop                          #  25    0x27d4f  1      OPC=nop            
  nop                          #  26    0x27d50  1      OPC=nop            
  nop                          #  27    0x27d51  1      OPC=nop            
  nop                          #  28    0x27d52  1      OPC=nop            
  nop                          #  29    0x27d53  1      OPC=nop            
  nop                          #  30    0x27d54  1      OPC=nop            
  nop                          #  31    0x27d55  1      OPC=nop            
  nop                          #  32    0x27d56  1      OPC=nop            
  nop                          #  33    0x27d57  1      OPC=nop            
  nop                          #  34    0x27d58  1      OPC=nop            
  nop                          #  35    0x27d59  1      OPC=nop            
  nop                          #  36    0x27d5a  1      OPC=nop            
  callq .List_Remove           #  37    0x27d5b  5      OPC=callq_label    
  movl %ebx, %edi              #  38    0x27d60  2      OPC=movl_r32_r32   
  popq %rbx                    #  39    0x27d62  1      OPC=popq_r64_1     
  jmpq .Variable_Destroy       #  40    0x27d63  5      OPC=jmpq_label_1   
  nop                          #  41    0x27d68  1      OPC=nop            
  nop                          #  42    0x27d69  1      OPC=nop            
  nop                          #  43    0x27d6a  1      OPC=nop            
  nop                          #  44    0x27d6b  1      OPC=nop            
  nop                          #  45    0x27d6c  1      OPC=nop            
  nop                          #  46    0x27d6d  1      OPC=nop            
  nop                          #  47    0x27d6e  1      OPC=nop            
  nop                          #  48    0x27d6f  1      OPC=nop            
  nop                          #  49    0x27d70  1      OPC=nop            
  nop                          #  50    0x27d71  1      OPC=nop            
  nop                          #  51    0x27d72  1      OPC=nop            
  nop                          #  52    0x27d73  1      OPC=nop            
  nop                          #  53    0x27d74  1      OPC=nop            
  nop                          #  54    0x27d75  1      OPC=nop            
  nop                          #  55    0x27d76  1      OPC=nop            
  nop                          #  56    0x27d77  1      OPC=nop            
  nop                          #  57    0x27d78  1      OPC=nop            
  nop                          #  58    0x27d79  1      OPC=nop            
  nop                          #  59    0x27d7a  1      OPC=nop            
  nop                          #  60    0x27d7b  1      OPC=nop            
  nop                          #  61    0x27d7c  1      OPC=nop            
  nop                          #  62    0x27d7d  1      OPC=nop            
  nop                          #  63    0x27d7e  1      OPC=nop            
  nop                          #  64    0x27d7f  1      OPC=nop            
.L_27d80:                      #        0x27d80  0      OPC=<label>        
  leal (,%rdx,4), %ecx         #  65    0x27d80  7      OPC=leal_r32_m16   
  movl %eax, %eax              #  66    0x27d87  2      OPC=movl_r32_r32   
  addl (%r15,%rax,1), %ecx     #  67    0x27d89  4      OPC=addl_r32_m32   
  movl %ecx, %ecx              #  68    0x27d8d  2      OPC=movl_r32_r32   
  movl (%r15,%rcx,1), %edi     #  69    0x27d8f  4      OPC=movl_r32_m32   
  addl $0x1, %edx              #  70    0x27d93  3      OPC=addl_r32_imm8  
  movl %eax, %eax              #  71    0x27d96  2      OPC=movl_r32_r32   
  movl %edx, 0x8(%r15,%rax,1)  #  72    0x27d98  5      OPC=movl_m32_r32   
  testq %rdi, %rdi             #  73    0x27d9d  3      OPC=testq_r64_r64  
  je .L_27d40                  #  74    0x27da0  2      OPC=je_label       
  nop                          #  75    0x27da2  1      OPC=nop            
  nop                          #  76    0x27da3  1      OPC=nop            
  nop                          #  77    0x27da4  1      OPC=nop            
  nop                          #  78    0x27da5  1      OPC=nop            
  nop                          #  79    0x27da6  1      OPC=nop            
  nop                          #  80    0x27da7  1      OPC=nop            
  nop                          #  81    0x27da8  1      OPC=nop            
  nop                          #  82    0x27da9  1      OPC=nop            
  nop                          #  83    0x27daa  1      OPC=nop            
  nop                          #  84    0x27dab  1      OPC=nop            
  nop                          #  85    0x27dac  1      OPC=nop            
  nop                          #  86    0x27dad  1      OPC=nop            
  nop                          #  87    0x27dae  1      OPC=nop            
  nop                          #  88    0x27daf  1      OPC=nop            
  nop                          #  89    0x27db0  1      OPC=nop            
  nop                          #  90    0x27db1  1      OPC=nop            
  nop                          #  91    0x27db2  1      OPC=nop            
  nop                          #  92    0x27db3  1      OPC=nop            
  nop                          #  93    0x27db4  1      OPC=nop            
  nop                          #  94    0x27db5  1      OPC=nop            
  nop                          #  95    0x27db6  1      OPC=nop            
  nop                          #  96    0x27db7  1      OPC=nop            
  nop                          #  97    0x27db8  1      OPC=nop            
  nop                          #  98    0x27db9  1      OPC=nop            
  nop                          #  99    0x27dba  1      OPC=nop            
  callq .DestroyConstraint     #  100   0x27dbb  5      OPC=callq_label    
  movl %ebx, %ebx              #  101   0x27dc0  2      OPC=movl_r32_r32   
  movl 0x4(%r15,%rbx,1), %eax  #  102   0x27dc2  5      OPC=movl_r32_m32   
  movl %eax, %eax              #  103   0x27dc7  2      OPC=movl_r32_r32   
  movl 0x8(%r15,%rax,1), %edx  #  104   0x27dc9  5      OPC=movl_r32_m32   
  movl %eax, %eax              #  105   0x27dce  2      OPC=movl_r32_r32   
  cmpl %edx, 0xc(%r15,%rax,1)  #  106   0x27dd0  5      OPC=cmpl_m32_r32   
  jl .L_27d40                  #  107   0x27dd5  6      OPC=jl_label_1     
  jmpq .L_27d80                #  108   0x27ddb  2      OPC=jmpq_label     
  nop                          #  109   0x27ddd  1      OPC=nop            
  nop                          #  110   0x27dde  1      OPC=nop            
  nop                          #  111   0x27ddf  1      OPC=nop            
                                                                           
.size DestroyVariable, .-DestroyVariable

