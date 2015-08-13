  .text
  .globl tp_create
  .type tp_create, @function

#! file-offset 0x63ee0
#! rip-offset  0x23ee0
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.tp_create:                     #        0x23ee0  0      OPC=<label>         
  pushq %r12                    #  1     0x23ee0  2      OPC=pushq_r64_1     
  pushq %rbx                    #  2     0x23ee2  1      OPC=pushq_r64_1     
  subl $0x8, %esp               #  3     0x23ee3  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  4     0x23ee6  3      OPC=addq_r64_r64    
  movl %edi, %r12d              #  5     0x23ee9  3      OPC=movl_r32_r32    
  movl $0x20, %edi              #  6     0x23eec  5      OPC=movl_r32_imm32  
  nop                           #  7     0x23ef1  1      OPC=nop             
  nop                           #  8     0x23ef2  1      OPC=nop             
  nop                           #  9     0x23ef3  1      OPC=nop             
  nop                           #  10    0x23ef4  1      OPC=nop             
  nop                           #  11    0x23ef5  1      OPC=nop             
  nop                           #  12    0x23ef6  1      OPC=nop             
  nop                           #  13    0x23ef7  1      OPC=nop             
  nop                           #  14    0x23ef8  1      OPC=nop             
  nop                           #  15    0x23ef9  1      OPC=nop             
  nop                           #  16    0x23efa  1      OPC=nop             
  callq .malloc                 #  17    0x23efb  5      OPC=callq_label     
  movl %eax, %ebx               #  18    0x23f00  2      OPC=movl_r32_r32    
  leal (,%r12,8), %edi          #  19    0x23f02  8      OPC=leal_r32_m16    
  xchgw %ax, %ax                #  20    0x23f0a  2      OPC=xchgw_ax_r16    
  nop                           #  21    0x23f0c  1      OPC=nop             
  nop                           #  22    0x23f0d  1      OPC=nop             
  nop                           #  23    0x23f0e  1      OPC=nop             
  nop                           #  24    0x23f0f  1      OPC=nop             
  nop                           #  25    0x23f10  1      OPC=nop             
  nop                           #  26    0x23f11  1      OPC=nop             
  nop                           #  27    0x23f12  1      OPC=nop             
  nop                           #  28    0x23f13  1      OPC=nop             
  nop                           #  29    0x23f14  1      OPC=nop             
  nop                           #  30    0x23f15  1      OPC=nop             
  nop                           #  31    0x23f16  1      OPC=nop             
  nop                           #  32    0x23f17  1      OPC=nop             
  nop                           #  33    0x23f18  1      OPC=nop             
  nop                           #  34    0x23f19  1      OPC=nop             
  nop                           #  35    0x23f1a  1      OPC=nop             
  callq .malloc                 #  36    0x23f1b  5      OPC=callq_label     
  movl %ebx, %ebx               #  37    0x23f20  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)      #  38    0x23f22  4      OPC=movl_m32_r32    
  movl %ebx, %ebx               #  39    0x23f26  2      OPC=movl_r32_r32    
  movl %r12d, 0x4(%r15,%rbx,1)  #  40    0x23f28  5      OPC=movl_m32_r32    
  movl %ebx, %ebx               #  41    0x23f2d  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)   #  42    0x23f2f  9      OPC=movl_m32_imm32  
  leal 0xc(%rbx), %edi          #  43    0x23f38  3      OPC=leal_r32_m16    
  xorl %esi, %esi               #  44    0x23f3b  2      OPC=xorl_r32_r32    
  nop                           #  45    0x23f3d  1      OPC=nop             
  nop                           #  46    0x23f3e  1      OPC=nop             
  nop                           #  47    0x23f3f  1      OPC=nop             
  nop                           #  48    0x23f40  1      OPC=nop             
  nop                           #  49    0x23f41  1      OPC=nop             
  nop                           #  50    0x23f42  1      OPC=nop             
  nop                           #  51    0x23f43  1      OPC=nop             
  nop                           #  52    0x23f44  1      OPC=nop             
  nop                           #  53    0x23f45  1      OPC=nop             
  nop                           #  54    0x23f46  1      OPC=nop             
  nop                           #  55    0x23f47  1      OPC=nop             
  nop                           #  56    0x23f48  1      OPC=nop             
  nop                           #  57    0x23f49  1      OPC=nop             
  nop                           #  58    0x23f4a  1      OPC=nop             
  nop                           #  59    0x23f4b  1      OPC=nop             
  nop                           #  60    0x23f4c  1      OPC=nop             
  nop                           #  61    0x23f4d  1      OPC=nop             
  nop                           #  62    0x23f4e  1      OPC=nop             
  nop                           #  63    0x23f4f  1      OPC=nop             
  nop                           #  64    0x23f50  1      OPC=nop             
  nop                           #  65    0x23f51  1      OPC=nop             
  nop                           #  66    0x23f52  1      OPC=nop             
  nop                           #  67    0x23f53  1      OPC=nop             
  nop                           #  68    0x23f54  1      OPC=nop             
  nop                           #  69    0x23f55  1      OPC=nop             
  nop                           #  70    0x23f56  1      OPC=nop             
  nop                           #  71    0x23f57  1      OPC=nop             
  nop                           #  72    0x23f58  1      OPC=nop             
  nop                           #  73    0x23f59  1      OPC=nop             
  nop                           #  74    0x23f5a  1      OPC=nop             
  callq .pthread_mutex_init     #  75    0x23f5b  5      OPC=callq_label     
  movl %ebx, %eax               #  76    0x23f60  2      OPC=movl_r32_r32    
  addl $0x8, %esp               #  77    0x23f62  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  78    0x23f65  3      OPC=addq_r64_r64    
  popq %rbx                     #  79    0x23f68  1      OPC=popq_r64_1      
  popq %r12                     #  80    0x23f69  2      OPC=popq_r64_1      
  popq %r11                     #  81    0x23f6b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  82    0x23f6d  7      OPC=andl_r32_imm32  
  nop                           #  83    0x23f74  1      OPC=nop             
  nop                           #  84    0x23f75  1      OPC=nop             
  nop                           #  85    0x23f76  1      OPC=nop             
  nop                           #  86    0x23f77  1      OPC=nop             
  addq %r15, %r11               #  87    0x23f78  3      OPC=addq_r64_r64    
  jmpq %r11                     #  88    0x23f7b  3      OPC=jmpq_r64        
  nop                           #  89    0x23f7e  1      OPC=nop             
  nop                           #  90    0x23f7f  1      OPC=nop             
  nop                           #  91    0x23f80  1      OPC=nop             
  nop                           #  92    0x23f81  1      OPC=nop             
  nop                           #  93    0x23f82  1      OPC=nop             
  nop                           #  94    0x23f83  1      OPC=nop             
  nop                           #  95    0x23f84  1      OPC=nop             
  nop                           #  96    0x23f85  1      OPC=nop             
  nop                           #  97    0x23f86  1      OPC=nop             
                                                                             
.size tp_create, .-tp_create

