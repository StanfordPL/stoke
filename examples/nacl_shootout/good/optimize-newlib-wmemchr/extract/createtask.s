  .text
  .globl createtask
  .type createtask, @function

#! file-offset 0x65a40
#! rip-offset  0x25a40
#! capacity    224 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
.createtask:                          #        0x25a40  0      OPC=<label>         
  pushq %r14                          #  1     0x25a40  2      OPC=pushq_r64_1     
  pushq %r13                          #  2     0x25a42  2      OPC=pushq_r64_1     
  pushq %r12                          #  3     0x25a44  2      OPC=pushq_r64_1     
  pushq %rbx                          #  4     0x25a46  1      OPC=pushq_r64_1     
  subl $0x18, %esp                    #  5     0x25a47  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                     #  6     0x25a4a  3      OPC=addq_r64_r64    
  movl %edi, %ebx                     #  7     0x25a4d  2      OPC=movl_r32_r32    
  movl %esi, %r12d                    #  8     0x25a4f  3      OPC=movl_r32_r32    
  movl %ecx, %r13d                    #  9     0x25a52  3      OPC=movl_r32_r32    
  movl %r9d, %r14d                    #  10    0x25a55  3      OPC=movl_r32_r32    
  movl %edx, %edx                     #  11    0x25a58  2      OPC=movl_r32_r32    
  movl %r8d, %r8d                     #  12    0x25a5a  3      OPC=movl_r32_r32    
  nop                                 #  13    0x25a5d  1      OPC=nop             
  nop                                 #  14    0x25a5e  1      OPC=nop             
  nop                                 #  15    0x25a5f  1      OPC=nop             
  movl $0x20, %edi                    #  16    0x25a60  5      OPC=movl_r32_imm32  
  movq %rdx, 0x8(%rsp)                #  17    0x25a65  5      OPC=movq_m64_r64    
  movq %r8, (%rsp)                    #  18    0x25a6a  4      OPC=movq_m64_r64    
  nop                                 #  19    0x25a6e  1      OPC=nop             
  nop                                 #  20    0x25a6f  1      OPC=nop             
  nop                                 #  21    0x25a70  1      OPC=nop             
  nop                                 #  22    0x25a71  1      OPC=nop             
  nop                                 #  23    0x25a72  1      OPC=nop             
  nop                                 #  24    0x25a73  1      OPC=nop             
  nop                                 #  25    0x25a74  1      OPC=nop             
  nop                                 #  26    0x25a75  1      OPC=nop             
  nop                                 #  27    0x25a76  1      OPC=nop             
  nop                                 #  28    0x25a77  1      OPC=nop             
  nop                                 #  29    0x25a78  1      OPC=nop             
  nop                                 #  30    0x25a79  1      OPC=nop             
  nop                                 #  31    0x25a7a  1      OPC=nop             
  callq .malloc                       #  32    0x25a7b  5      OPC=callq_label     
  movl %eax, %eax                     #  33    0x25a80  2      OPC=movl_r32_r32    
  leal (,%rbx,4), %ecx                #  34    0x25a82  7      OPC=leal_r32_m16    
  movslq %ecx, %rcx                   #  35    0x25a89  3      OPC=movslq_r64_r32  
  movl %ecx, %ecx                     #  36    0x25a8c  2      OPC=movl_r32_r32    
  movl %eax, 0x10070620(%r15,%rcx,1)  #  37    0x25a8e  8      OPC=movl_m32_r32    
  movl 0x1004b690(%rip), %ecx         #  38    0x25a96  6      OPC=movl_r32_m32    
  nop                                 #  39    0x25a9c  1      OPC=nop             
  nop                                 #  40    0x25a9d  1      OPC=nop             
  nop                                 #  41    0x25a9e  1      OPC=nop             
  nop                                 #  42    0x25a9f  1      OPC=nop             
  movl %eax, %eax                     #  43    0x25aa0  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rax,1)            #  44    0x25aa2  4      OPC=movl_m32_r32    
  movl %eax, %eax                     #  45    0x25aa6  2      OPC=movl_r32_r32    
  movl %ebx, 0x4(%r15,%rax,1)         #  46    0x25aa8  5      OPC=movl_m32_r32    
  movl %eax, %eax                     #  47    0x25aad  2      OPC=movl_r32_r32    
  movl %r12d, 0x8(%r15,%rax,1)        #  48    0x25aaf  5      OPC=movl_m32_r32    
  movq 0x8(%rsp), %rdx                #  49    0x25ab4  5      OPC=movq_r64_m64    
  movl %eax, %eax                     #  50    0x25ab9  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rax,1)         #  51    0x25abb  5      OPC=movl_m32_r32    
  movl %eax, %eax                     #  52    0x25ac0  2      OPC=movl_r32_r32    
  movl %r13d, 0x10(%r15,%rax,1)       #  53    0x25ac2  5      OPC=movl_m32_r32    
  movq (%rsp), %r8                    #  54    0x25ac7  4      OPC=movq_r64_m64    
  movl %eax, %eax                     #  55    0x25acb  2      OPC=movl_r32_r32    
  movl %r8d, 0x14(%r15,%rax,1)        #  56    0x25acd  5      OPC=movl_m32_r32    
  movl %eax, %eax                     #  57    0x25ad2  2      OPC=movl_r32_r32    
  movl %r14d, 0x18(%r15,%rax,1)       #  58    0x25ad4  5      OPC=movl_m32_r32    
  movl 0x40(%rsp), %edx               #  59    0x25ad9  4      OPC=movl_r32_m32    
  nop                                 #  60    0x25add  1      OPC=nop             
  nop                                 #  61    0x25ade  1      OPC=nop             
  nop                                 #  62    0x25adf  1      OPC=nop             
  movl %eax, %eax                     #  63    0x25ae0  2      OPC=movl_r32_r32    
  movl %edx, 0x1c(%r15,%rax,1)        #  64    0x25ae2  5      OPC=movl_m32_r32    
  movl %eax, 0x1004b63f(%rip)         #  65    0x25ae7  6      OPC=movl_m32_r32    
  addl $0x18, %esp                    #  66    0x25aed  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                     #  67    0x25af0  3      OPC=addq_r64_r64    
  popq %rbx                           #  68    0x25af3  1      OPC=popq_r64_1      
  popq %r12                           #  69    0x25af4  2      OPC=popq_r64_1      
  popq %r13                           #  70    0x25af6  2      OPC=popq_r64_1      
  popq %r14                           #  71    0x25af8  2      OPC=popq_r64_1      
  popq %r11                           #  72    0x25afa  2      OPC=popq_r64_1      
  nop                                 #  73    0x25afc  1      OPC=nop             
  nop                                 #  74    0x25afd  1      OPC=nop             
  nop                                 #  75    0x25afe  1      OPC=nop             
  nop                                 #  76    0x25aff  1      OPC=nop             
  andl $0xffffffe0, %r11d             #  77    0x25b00  7      OPC=andl_r32_imm32  
  nop                                 #  78    0x25b07  1      OPC=nop             
  nop                                 #  79    0x25b08  1      OPC=nop             
  nop                                 #  80    0x25b09  1      OPC=nop             
  nop                                 #  81    0x25b0a  1      OPC=nop             
  addq %r15, %r11                     #  82    0x25b0b  3      OPC=addq_r64_r64    
  jmpq %r11                           #  83    0x25b0e  3      OPC=jmpq_r64        
  nop                                 #  84    0x25b11  1      OPC=nop             
  nop                                 #  85    0x25b12  1      OPC=nop             
  nop                                 #  86    0x25b13  1      OPC=nop             
  nop                                 #  87    0x25b14  1      OPC=nop             
  nop                                 #  88    0x25b15  1      OPC=nop             
  nop                                 #  89    0x25b16  1      OPC=nop             
  nop                                 #  90    0x25b17  1      OPC=nop             
  nop                                 #  91    0x25b18  1      OPC=nop             
  nop                                 #  92    0x25b19  1      OPC=nop             
  nop                                 #  93    0x25b1a  1      OPC=nop             
  nop                                 #  94    0x25b1b  1      OPC=nop             
  nop                                 #  95    0x25b1c  1      OPC=nop             
  nop                                 #  96    0x25b1d  1      OPC=nop             
  nop                                 #  97    0x25b1e  1      OPC=nop             
  nop                                 #  98    0x25b1f  1      OPC=nop             
  nop                                 #  99    0x25b20  1      OPC=nop             
  nop                                 #  100   0x25b21  1      OPC=nop             
  nop                                 #  101   0x25b22  1      OPC=nop             
  nop                                 #  102   0x25b23  1      OPC=nop             
  nop                                 #  103   0x25b24  1      OPC=nop             
  nop                                 #  104   0x25b25  1      OPC=nop             
  nop                                 #  105   0x25b26  1      OPC=nop             
                                                                                   
.size createtask, .-createtask

