  .text
  .globl DestroyVariable
  .type DestroyVariable, @function

#! file-offset 0x682a0
#! rip-offset  0x282a0
#! capacity    192 bytes

# Text                         #  Line  RIP      Bytes  Opcode             
.DestroyVariable:              #        0x282a0  0      OPC=<label>        
  pushq %rbx                   #  1     0x282a0  1      OPC=pushq_r64_1    
  movl %edi, %ebx              #  2     0x282a1  2      OPC=movl_r32_r32   
  movl %ebx, %ebx              #  3     0x282a3  2      OPC=movl_r32_r32   
  movl 0x4(%r15,%rbx,1), %eax  #  4     0x282a5  5      OPC=movl_r32_m32   
  movl %eax, %eax              #  5     0x282aa  2      OPC=movl_r32_r32   
  movl 0x8(%r15,%rax,1), %edx  #  6     0x282ac  5      OPC=movl_r32_m32   
  movl %eax, %eax              #  7     0x282b1  2      OPC=movl_r32_r32   
  cmpl %edx, 0xc(%r15,%rax,1)  #  8     0x282b3  5      OPC=cmpl_m32_r32   
  jge .L_28300                 #  9     0x282b8  2      OPC=jge_label      
  nop                          #  10    0x282ba  1      OPC=nop            
  nop                          #  11    0x282bb  1      OPC=nop            
  nop                          #  12    0x282bc  1      OPC=nop            
  nop                          #  13    0x282bd  1      OPC=nop            
  nop                          #  14    0x282be  1      OPC=nop            
  nop                          #  15    0x282bf  1      OPC=nop            
.L_282c0:                      #        0x282c0  0      OPC=<label>        
  movl %ebx, %esi              #  16    0x282c0  2      OPC=movl_r32_r32   
  movl 0x10048e78(%rip), %edi  #  17    0x282c2  6      OPC=movl_r32_m32   
  nop                          #  18    0x282c8  1      OPC=nop            
  nop                          #  19    0x282c9  1      OPC=nop            
  nop                          #  20    0x282ca  1      OPC=nop            
  nop                          #  21    0x282cb  1      OPC=nop            
  nop                          #  22    0x282cc  1      OPC=nop            
  nop                          #  23    0x282cd  1      OPC=nop            
  nop                          #  24    0x282ce  1      OPC=nop            
  nop                          #  25    0x282cf  1      OPC=nop            
  nop                          #  26    0x282d0  1      OPC=nop            
  nop                          #  27    0x282d1  1      OPC=nop            
  nop                          #  28    0x282d2  1      OPC=nop            
  nop                          #  29    0x282d3  1      OPC=nop            
  nop                          #  30    0x282d4  1      OPC=nop            
  nop                          #  31    0x282d5  1      OPC=nop            
  nop                          #  32    0x282d6  1      OPC=nop            
  nop                          #  33    0x282d7  1      OPC=nop            
  nop                          #  34    0x282d8  1      OPC=nop            
  nop                          #  35    0x282d9  1      OPC=nop            
  nop                          #  36    0x282da  1      OPC=nop            
  callq .List_Remove           #  37    0x282db  5      OPC=callq_label    
  movl %ebx, %edi              #  38    0x282e0  2      OPC=movl_r32_r32   
  popq %rbx                    #  39    0x282e2  1      OPC=popq_r64_1     
  jmpq .Variable_Destroy       #  40    0x282e3  5      OPC=jmpq_label_1   
  nop                          #  41    0x282e8  1      OPC=nop            
  nop                          #  42    0x282e9  1      OPC=nop            
  nop                          #  43    0x282ea  1      OPC=nop            
  nop                          #  44    0x282eb  1      OPC=nop            
  nop                          #  45    0x282ec  1      OPC=nop            
  nop                          #  46    0x282ed  1      OPC=nop            
  nop                          #  47    0x282ee  1      OPC=nop            
  nop                          #  48    0x282ef  1      OPC=nop            
  nop                          #  49    0x282f0  1      OPC=nop            
  nop                          #  50    0x282f1  1      OPC=nop            
  nop                          #  51    0x282f2  1      OPC=nop            
  nop                          #  52    0x282f3  1      OPC=nop            
  nop                          #  53    0x282f4  1      OPC=nop            
  nop                          #  54    0x282f5  1      OPC=nop            
  nop                          #  55    0x282f6  1      OPC=nop            
  nop                          #  56    0x282f7  1      OPC=nop            
  nop                          #  57    0x282f8  1      OPC=nop            
  nop                          #  58    0x282f9  1      OPC=nop            
  nop                          #  59    0x282fa  1      OPC=nop            
  nop                          #  60    0x282fb  1      OPC=nop            
  nop                          #  61    0x282fc  1      OPC=nop            
  nop                          #  62    0x282fd  1      OPC=nop            
  nop                          #  63    0x282fe  1      OPC=nop            
  nop                          #  64    0x282ff  1      OPC=nop            
.L_28300:                      #        0x28300  0      OPC=<label>        
  leal (,%rdx,4), %ecx         #  65    0x28300  7      OPC=leal_r32_m16   
  movl %eax, %eax              #  66    0x28307  2      OPC=movl_r32_r32   
  addl (%r15,%rax,1), %ecx     #  67    0x28309  4      OPC=addl_r32_m32   
  movl %ecx, %ecx              #  68    0x2830d  2      OPC=movl_r32_r32   
  movl (%r15,%rcx,1), %edi     #  69    0x2830f  4      OPC=movl_r32_m32   
  addl $0x1, %edx              #  70    0x28313  3      OPC=addl_r32_imm8  
  movl %eax, %eax              #  71    0x28316  2      OPC=movl_r32_r32   
  movl %edx, 0x8(%r15,%rax,1)  #  72    0x28318  5      OPC=movl_m32_r32   
  testq %rdi, %rdi             #  73    0x2831d  3      OPC=testq_r64_r64  
  je .L_282c0                  #  74    0x28320  2      OPC=je_label       
  nop                          #  75    0x28322  1      OPC=nop            
  nop                          #  76    0x28323  1      OPC=nop            
  nop                          #  77    0x28324  1      OPC=nop            
  nop                          #  78    0x28325  1      OPC=nop            
  nop                          #  79    0x28326  1      OPC=nop            
  nop                          #  80    0x28327  1      OPC=nop            
  nop                          #  81    0x28328  1      OPC=nop            
  nop                          #  82    0x28329  1      OPC=nop            
  nop                          #  83    0x2832a  1      OPC=nop            
  nop                          #  84    0x2832b  1      OPC=nop            
  nop                          #  85    0x2832c  1      OPC=nop            
  nop                          #  86    0x2832d  1      OPC=nop            
  nop                          #  87    0x2832e  1      OPC=nop            
  nop                          #  88    0x2832f  1      OPC=nop            
  nop                          #  89    0x28330  1      OPC=nop            
  nop                          #  90    0x28331  1      OPC=nop            
  nop                          #  91    0x28332  1      OPC=nop            
  nop                          #  92    0x28333  1      OPC=nop            
  nop                          #  93    0x28334  1      OPC=nop            
  nop                          #  94    0x28335  1      OPC=nop            
  nop                          #  95    0x28336  1      OPC=nop            
  nop                          #  96    0x28337  1      OPC=nop            
  nop                          #  97    0x28338  1      OPC=nop            
  nop                          #  98    0x28339  1      OPC=nop            
  nop                          #  99    0x2833a  1      OPC=nop            
  callq .DestroyConstraint     #  100   0x2833b  5      OPC=callq_label    
  movl %ebx, %ebx              #  101   0x28340  2      OPC=movl_r32_r32   
  movl 0x4(%r15,%rbx,1), %eax  #  102   0x28342  5      OPC=movl_r32_m32   
  movl %eax, %eax              #  103   0x28347  2      OPC=movl_r32_r32   
  movl 0x8(%r15,%rax,1), %edx  #  104   0x28349  5      OPC=movl_r32_m32   
  movl %eax, %eax              #  105   0x2834e  2      OPC=movl_r32_r32   
  cmpl %edx, 0xc(%r15,%rax,1)  #  106   0x28350  5      OPC=cmpl_m32_r32   
  jl .L_282c0                  #  107   0x28355  6      OPC=jl_label_1     
  jmpq .L_28300                #  108   0x2835b  2      OPC=jmpq_label     
  nop                          #  109   0x2835d  1      OPC=nop            
  nop                          #  110   0x2835e  1      OPC=nop            
  nop                          #  111   0x2835f  1      OPC=nop            
                                                                           
.size DestroyVariable, .-DestroyVariable

