  .text
  .globl createtask
  .type createtask, @function

#! file-offset 0x65fa0
#! rip-offset  0x25fa0
#! capacity    224 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
.createtask:                          #        0x25fa0  0      OPC=<label>         
  pushq %r14                          #  1     0x25fa0  2      OPC=pushq_r64_1     
  pushq %r13                          #  2     0x25fa2  2      OPC=pushq_r64_1     
  pushq %r12                          #  3     0x25fa4  2      OPC=pushq_r64_1     
  pushq %rbx                          #  4     0x25fa6  1      OPC=pushq_r64_1     
  subl $0x18, %esp                    #  5     0x25fa7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                     #  6     0x25faa  3      OPC=addq_r64_r64    
  movl %edi, %ebx                     #  7     0x25fad  2      OPC=movl_r32_r32    
  movl %esi, %r12d                    #  8     0x25faf  3      OPC=movl_r32_r32    
  movl %ecx, %r13d                    #  9     0x25fb2  3      OPC=movl_r32_r32    
  movl %r9d, %r14d                    #  10    0x25fb5  3      OPC=movl_r32_r32    
  movl %edx, %edx                     #  11    0x25fb8  2      OPC=movl_r32_r32    
  movl %r8d, %r8d                     #  12    0x25fba  3      OPC=movl_r32_r32    
  nop                                 #  13    0x25fbd  1      OPC=nop             
  nop                                 #  14    0x25fbe  1      OPC=nop             
  nop                                 #  15    0x25fbf  1      OPC=nop             
  movl $0x20, %edi                    #  16    0x25fc0  5      OPC=movl_r32_imm32  
  movq %rdx, 0x8(%rsp)                #  17    0x25fc5  5      OPC=movq_m64_r64    
  movq %r8, (%rsp)                    #  18    0x25fca  4      OPC=movq_m64_r64    
  nop                                 #  19    0x25fce  1      OPC=nop             
  nop                                 #  20    0x25fcf  1      OPC=nop             
  nop                                 #  21    0x25fd0  1      OPC=nop             
  nop                                 #  22    0x25fd1  1      OPC=nop             
  nop                                 #  23    0x25fd2  1      OPC=nop             
  nop                                 #  24    0x25fd3  1      OPC=nop             
  nop                                 #  25    0x25fd4  1      OPC=nop             
  nop                                 #  26    0x25fd5  1      OPC=nop             
  nop                                 #  27    0x25fd6  1      OPC=nop             
  nop                                 #  28    0x25fd7  1      OPC=nop             
  nop                                 #  29    0x25fd8  1      OPC=nop             
  nop                                 #  30    0x25fd9  1      OPC=nop             
  nop                                 #  31    0x25fda  1      OPC=nop             
  callq .malloc                       #  32    0x25fdb  5      OPC=callq_label     
  movl %eax, %eax                     #  33    0x25fe0  2      OPC=movl_r32_r32    
  leal (,%rbx,4), %ecx                #  34    0x25fe2  7      OPC=leal_r32_m16    
  movslq %ecx, %rcx                   #  35    0x25fe9  3      OPC=movslq_r64_r32  
  movl %ecx, %ecx                     #  36    0x25fec  2      OPC=movl_r32_r32    
  movl %eax, 0x10070620(%r15,%rcx,1)  #  37    0x25fee  8      OPC=movl_m32_r32    
  movl 0x1004b130(%rip), %ecx         #  38    0x25ff6  6      OPC=movl_r32_m32    
  nop                                 #  39    0x25ffc  1      OPC=nop             
  nop                                 #  40    0x25ffd  1      OPC=nop             
  nop                                 #  41    0x25ffe  1      OPC=nop             
  nop                                 #  42    0x25fff  1      OPC=nop             
  movl %eax, %eax                     #  43    0x26000  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rax,1)            #  44    0x26002  4      OPC=movl_m32_r32    
  movl %eax, %eax                     #  45    0x26006  2      OPC=movl_r32_r32    
  movl %ebx, 0x4(%r15,%rax,1)         #  46    0x26008  5      OPC=movl_m32_r32    
  movl %eax, %eax                     #  47    0x2600d  2      OPC=movl_r32_r32    
  movl %r12d, 0x8(%r15,%rax,1)        #  48    0x2600f  5      OPC=movl_m32_r32    
  movq 0x8(%rsp), %rdx                #  49    0x26014  5      OPC=movq_r64_m64    
  movl %eax, %eax                     #  50    0x26019  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rax,1)         #  51    0x2601b  5      OPC=movl_m32_r32    
  movl %eax, %eax                     #  52    0x26020  2      OPC=movl_r32_r32    
  movl %r13d, 0x10(%r15,%rax,1)       #  53    0x26022  5      OPC=movl_m32_r32    
  movq (%rsp), %r8                    #  54    0x26027  4      OPC=movq_r64_m64    
  movl %eax, %eax                     #  55    0x2602b  2      OPC=movl_r32_r32    
  movl %r8d, 0x14(%r15,%rax,1)        #  56    0x2602d  5      OPC=movl_m32_r32    
  movl %eax, %eax                     #  57    0x26032  2      OPC=movl_r32_r32    
  movl %r14d, 0x18(%r15,%rax,1)       #  58    0x26034  5      OPC=movl_m32_r32    
  movl 0x40(%rsp), %edx               #  59    0x26039  4      OPC=movl_r32_m32    
  nop                                 #  60    0x2603d  1      OPC=nop             
  nop                                 #  61    0x2603e  1      OPC=nop             
  nop                                 #  62    0x2603f  1      OPC=nop             
  movl %eax, %eax                     #  63    0x26040  2      OPC=movl_r32_r32    
  movl %edx, 0x1c(%r15,%rax,1)        #  64    0x26042  5      OPC=movl_m32_r32    
  movl %eax, 0x1004b0df(%rip)         #  65    0x26047  6      OPC=movl_m32_r32    
  addl $0x18, %esp                    #  66    0x2604d  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                     #  67    0x26050  3      OPC=addq_r64_r64    
  popq %rbx                           #  68    0x26053  1      OPC=popq_r64_1      
  popq %r12                           #  69    0x26054  2      OPC=popq_r64_1      
  popq %r13                           #  70    0x26056  2      OPC=popq_r64_1      
  popq %r14                           #  71    0x26058  2      OPC=popq_r64_1      
  popq %r11                           #  72    0x2605a  2      OPC=popq_r64_1      
  nop                                 #  73    0x2605c  1      OPC=nop             
  nop                                 #  74    0x2605d  1      OPC=nop             
  nop                                 #  75    0x2605e  1      OPC=nop             
  nop                                 #  76    0x2605f  1      OPC=nop             
  andl $0xffffffe0, %r11d             #  77    0x26060  7      OPC=andl_r32_imm32  
  nop                                 #  78    0x26067  1      OPC=nop             
  nop                                 #  79    0x26068  1      OPC=nop             
  nop                                 #  80    0x26069  1      OPC=nop             
  nop                                 #  81    0x2606a  1      OPC=nop             
  addq %r15, %r11                     #  82    0x2606b  3      OPC=addq_r64_r64    
  jmpq %r11                           #  83    0x2606e  3      OPC=jmpq_r64        
  nop                                 #  84    0x26071  1      OPC=nop             
  nop                                 #  85    0x26072  1      OPC=nop             
  nop                                 #  86    0x26073  1      OPC=nop             
  nop                                 #  87    0x26074  1      OPC=nop             
  nop                                 #  88    0x26075  1      OPC=nop             
  nop                                 #  89    0x26076  1      OPC=nop             
  nop                                 #  90    0x26077  1      OPC=nop             
  nop                                 #  91    0x26078  1      OPC=nop             
  nop                                 #  92    0x26079  1      OPC=nop             
  nop                                 #  93    0x2607a  1      OPC=nop             
  nop                                 #  94    0x2607b  1      OPC=nop             
  nop                                 #  95    0x2607c  1      OPC=nop             
  nop                                 #  96    0x2607d  1      OPC=nop             
  nop                                 #  97    0x2607e  1      OPC=nop             
  nop                                 #  98    0x2607f  1      OPC=nop             
  nop                                 #  99    0x26080  1      OPC=nop             
  nop                                 #  100   0x26081  1      OPC=nop             
  nop                                 #  101   0x26082  1      OPC=nop             
  nop                                 #  102   0x26083  1      OPC=nop             
  nop                                 #  103   0x26084  1      OPC=nop             
  nop                                 #  104   0x26085  1      OPC=nop             
  nop                                 #  105   0x26086  1      OPC=nop             
                                                                                   
.size createtask, .-createtask

