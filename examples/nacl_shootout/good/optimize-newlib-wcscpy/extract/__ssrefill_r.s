  .text
  .globl __ssrefill_r
  .type __ssrefill_r, @function

#! file-offset 0x18fb60
#! rip-offset  0x14fb60
#! capacity    192 bytes

# Text                          #  Line  RIP       Bytes  Opcode                
.__ssrefill_r:                  #        0x14fb60  0      OPC=<label>           
  pushq %rbx                    #  1     0x14fb60  1      OPC=pushq_r64_1       
  movl %esi, %ebx               #  2     0x14fb61  2      OPC=movl_r32_r32      
  movl %edi, %edi               #  3     0x14fb63  2      OPC=movl_r32_r32      
  movl %ebx, %ebx               #  4     0x14fb65  2      OPC=movl_r32_r32      
  movl 0x30(%r15,%rbx,1), %esi  #  5     0x14fb67  5      OPC=movl_r32_m32      
  testq %rsi, %rsi              #  6     0x14fb6c  3      OPC=testq_r64_r64     
  je .L_14fbe0                  #  7     0x14fb6f  2      OPC=je_label          
  leal 0x40(%rbx), %eax         #  8     0x14fb71  3      OPC=leal_r32_m16      
  cmpl %esi, %eax               #  9     0x14fb74  2      OPC=cmpl_r32_r32      
  je .L_14fb80                  #  10    0x14fb76  2      OPC=je_label          
  nop                           #  11    0x14fb78  1      OPC=nop               
  nop                           #  12    0x14fb79  1      OPC=nop               
  nop                           #  13    0x14fb7a  1      OPC=nop               
  callq ._free_r                #  14    0x14fb7b  5      OPC=callq_label       
.L_14fb80:                      #        0x14fb80  0      OPC=<label>           
  movl %ebx, %ebx               #  15    0x14fb80  2      OPC=movl_r32_r32      
  movl 0x3c(%r15,%rbx,1), %eax  #  16    0x14fb82  5      OPC=movl_r32_m32      
  movl %ebx, %ebx               #  17    0x14fb87  2      OPC=movl_r32_r32      
  movl $0x0, 0x30(%r15,%rbx,1)  #  18    0x14fb89  9      OPC=movl_m32_imm32    
  testl %eax, %eax              #  19    0x14fb92  2      OPC=testl_r32_r32     
  movl %ebx, %ebx               #  20    0x14fb94  2      OPC=movl_r32_r32      
  movl %eax, 0x4(%r15,%rbx,1)   #  21    0x14fb96  5      OPC=movl_m32_r32      
  nop                           #  22    0x14fb9b  1      OPC=nop               
  nop                           #  23    0x14fb9c  1      OPC=nop               
  nop                           #  24    0x14fb9d  1      OPC=nop               
  nop                           #  25    0x14fb9e  1      OPC=nop               
  nop                           #  26    0x14fb9f  1      OPC=nop               
  je .L_14fbe0                  #  27    0x14fba0  2      OPC=je_label          
  movl %ebx, %ebx               #  28    0x14fba2  2      OPC=movl_r32_r32      
  movl 0x38(%r15,%rbx,1), %eax  #  29    0x14fba4  5      OPC=movl_r32_m32      
  movl %ebx, %ebx               #  30    0x14fba9  2      OPC=movl_r32_r32      
  movl %eax, (%r15,%rbx,1)      #  31    0x14fbab  4      OPC=movl_m32_r32      
  xorl %eax, %eax               #  32    0x14fbaf  2      OPC=xorl_r32_r32      
  nop                           #  33    0x14fbb1  1      OPC=nop               
  nop                           #  34    0x14fbb2  1      OPC=nop               
  nop                           #  35    0x14fbb3  1      OPC=nop               
  nop                           #  36    0x14fbb4  1      OPC=nop               
  nop                           #  37    0x14fbb5  1      OPC=nop               
  nop                           #  38    0x14fbb6  1      OPC=nop               
  nop                           #  39    0x14fbb7  1      OPC=nop               
  nop                           #  40    0x14fbb8  1      OPC=nop               
  nop                           #  41    0x14fbb9  1      OPC=nop               
  nop                           #  42    0x14fbba  1      OPC=nop               
  nop                           #  43    0x14fbbb  1      OPC=nop               
  nop                           #  44    0x14fbbc  1      OPC=nop               
  nop                           #  45    0x14fbbd  1      OPC=nop               
  nop                           #  46    0x14fbbe  1      OPC=nop               
  nop                           #  47    0x14fbbf  1      OPC=nop               
.L_14fbc0:                      #        0x14fbc0  0      OPC=<label>           
  popq %rbx                     #  48    0x14fbc0  1      OPC=popq_r64_1        
  popq %r11                     #  49    0x14fbc1  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d       #  50    0x14fbc3  7      OPC=andl_r32_imm32    
  nop                           #  51    0x14fbca  1      OPC=nop               
  nop                           #  52    0x14fbcb  1      OPC=nop               
  nop                           #  53    0x14fbcc  1      OPC=nop               
  nop                           #  54    0x14fbcd  1      OPC=nop               
  addq %r15, %r11               #  55    0x14fbce  3      OPC=addq_r64_r64      
  jmpq %r11                     #  56    0x14fbd1  3      OPC=jmpq_r64          
  nop                           #  57    0x14fbd4  1      OPC=nop               
  nop                           #  58    0x14fbd5  1      OPC=nop               
  nop                           #  59    0x14fbd6  1      OPC=nop               
  nop                           #  60    0x14fbd7  1      OPC=nop               
  nop                           #  61    0x14fbd8  1      OPC=nop               
  nop                           #  62    0x14fbd9  1      OPC=nop               
  nop                           #  63    0x14fbda  1      OPC=nop               
  nop                           #  64    0x14fbdb  1      OPC=nop               
  nop                           #  65    0x14fbdc  1      OPC=nop               
  nop                           #  66    0x14fbdd  1      OPC=nop               
  nop                           #  67    0x14fbde  1      OPC=nop               
  nop                           #  68    0x14fbdf  1      OPC=nop               
  nop                           #  69    0x14fbe0  1      OPC=nop               
  nop                           #  70    0x14fbe1  1      OPC=nop               
  nop                           #  71    0x14fbe2  1      OPC=nop               
  nop                           #  72    0x14fbe3  1      OPC=nop               
  nop                           #  73    0x14fbe4  1      OPC=nop               
  nop                           #  74    0x14fbe5  1      OPC=nop               
  nop                           #  75    0x14fbe6  1      OPC=nop               
.L_14fbe0:                      #        0x14fbe7  0      OPC=<label>           
  movl %ebx, %ebx               #  76    0x14fbe7  2      OPC=movl_r32_r32      
  movl 0x10(%r15,%rbx,1), %eax  #  77    0x14fbe9  5      OPC=movl_r32_m32      
  movl %ebx, %ebx               #  78    0x14fbee  2      OPC=movl_r32_r32      
  movl $0x0, 0x4(%r15,%rbx,1)   #  79    0x14fbf0  9      OPC=movl_m32_imm32    
  movl %ebx, %ebx               #  80    0x14fbf9  2      OPC=movl_r32_r32      
  orw $0x20, 0xc(%r15,%rbx,1)   #  81    0x14fbfb  7      OPC=orw_m16_imm8      
  nop                           #  82    0x14fc02  1      OPC=nop               
  nop                           #  83    0x14fc03  1      OPC=nop               
  nop                           #  84    0x14fc04  1      OPC=nop               
  nop                           #  85    0x14fc05  1      OPC=nop               
  nop                           #  86    0x14fc06  1      OPC=nop               
  movl %ebx, %ebx               #  87    0x14fc07  2      OPC=movl_r32_r32      
  movl %eax, (%r15,%rbx,1)      #  88    0x14fc09  4      OPC=movl_m32_r32      
  movl $0xffffffff, %eax        #  89    0x14fc0d  6      OPC=movl_r32_imm32_1  
  jmpq .L_14fbc0                #  90    0x14fc13  2      OPC=jmpq_label        
  nop                           #  91    0x14fc15  1      OPC=nop               
  nop                           #  92    0x14fc16  1      OPC=nop               
  nop                           #  93    0x14fc17  1      OPC=nop               
  nop                           #  94    0x14fc18  1      OPC=nop               
  nop                           #  95    0x14fc19  1      OPC=nop               
  nop                           #  96    0x14fc1a  1      OPC=nop               
  nop                           #  97    0x14fc1b  1      OPC=nop               
  nop                           #  98    0x14fc1c  1      OPC=nop               
  nop                           #  99    0x14fc1d  1      OPC=nop               
  nop                           #  100   0x14fc1e  1      OPC=nop               
  nop                           #  101   0x14fc1f  1      OPC=nop               
  nop                           #  102   0x14fc20  1      OPC=nop               
  nop                           #  103   0x14fc21  1      OPC=nop               
  nop                           #  104   0x14fc22  1      OPC=nop               
  nop                           #  105   0x14fc23  1      OPC=nop               
  nop                           #  106   0x14fc24  1      OPC=nop               
  nop                           #  107   0x14fc25  1      OPC=nop               
  nop                           #  108   0x14fc26  1      OPC=nop               
  nop                           #  109   0x14fc27  1      OPC=nop               
                                                                                
.size __ssrefill_r, .-__ssrefill_r

