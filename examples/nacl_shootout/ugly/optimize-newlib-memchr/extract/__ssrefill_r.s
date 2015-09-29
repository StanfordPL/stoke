  .text
  .globl __ssrefill_r
  .type __ssrefill_r, @function

#! file-offset 0x190620
#! rip-offset  0x150620
#! capacity    192 bytes

# Text                          #  Line  RIP       Bytes  Opcode                
.__ssrefill_r:                  #        0x150620  0      OPC=<label>           
  pushq %rbx                    #  1     0x150620  1      OPC=pushq_r64_1       
  movl %esi, %ebx               #  2     0x150621  2      OPC=movl_r32_r32      
  movl %edi, %edi               #  3     0x150623  2      OPC=movl_r32_r32      
  movl %ebx, %ebx               #  4     0x150625  2      OPC=movl_r32_r32      
  movl 0x30(%r15,%rbx,1), %esi  #  5     0x150627  5      OPC=movl_r32_m32      
  testq %rsi, %rsi              #  6     0x15062c  3      OPC=testq_r64_r64     
  je .L_1506a0                  #  7     0x15062f  2      OPC=je_label          
  leal 0x40(%rbx), %eax         #  8     0x150631  3      OPC=leal_r32_m16      
  cmpl %esi, %eax               #  9     0x150634  2      OPC=cmpl_r32_r32      
  je .L_150640                  #  10    0x150636  2      OPC=je_label          
  nop                           #  11    0x150638  1      OPC=nop               
  nop                           #  12    0x150639  1      OPC=nop               
  nop                           #  13    0x15063a  1      OPC=nop               
  callq ._free_r                #  14    0x15063b  5      OPC=callq_label       
.L_150640:                      #        0x150640  0      OPC=<label>           
  movl %ebx, %ebx               #  15    0x150640  2      OPC=movl_r32_r32      
  movl 0x3c(%r15,%rbx,1), %eax  #  16    0x150642  5      OPC=movl_r32_m32      
  movl %ebx, %ebx               #  17    0x150647  2      OPC=movl_r32_r32      
  movl $0x0, 0x30(%r15,%rbx,1)  #  18    0x150649  9      OPC=movl_m32_imm32    
  testl %eax, %eax              #  19    0x150652  2      OPC=testl_r32_r32     
  movl %ebx, %ebx               #  20    0x150654  2      OPC=movl_r32_r32      
  movl %eax, 0x4(%r15,%rbx,1)   #  21    0x150656  5      OPC=movl_m32_r32      
  nop                           #  22    0x15065b  1      OPC=nop               
  nop                           #  23    0x15065c  1      OPC=nop               
  nop                           #  24    0x15065d  1      OPC=nop               
  nop                           #  25    0x15065e  1      OPC=nop               
  nop                           #  26    0x15065f  1      OPC=nop               
  je .L_1506a0                  #  27    0x150660  2      OPC=je_label          
  movl %ebx, %ebx               #  28    0x150662  2      OPC=movl_r32_r32      
  movl 0x38(%r15,%rbx,1), %eax  #  29    0x150664  5      OPC=movl_r32_m32      
  movl %ebx, %ebx               #  30    0x150669  2      OPC=movl_r32_r32      
  movl %eax, (%r15,%rbx,1)      #  31    0x15066b  4      OPC=movl_m32_r32      
  xorl %eax, %eax               #  32    0x15066f  2      OPC=xorl_r32_r32      
  nop                           #  33    0x150671  1      OPC=nop               
  nop                           #  34    0x150672  1      OPC=nop               
  nop                           #  35    0x150673  1      OPC=nop               
  nop                           #  36    0x150674  1      OPC=nop               
  nop                           #  37    0x150675  1      OPC=nop               
  nop                           #  38    0x150676  1      OPC=nop               
  nop                           #  39    0x150677  1      OPC=nop               
  nop                           #  40    0x150678  1      OPC=nop               
  nop                           #  41    0x150679  1      OPC=nop               
  nop                           #  42    0x15067a  1      OPC=nop               
  nop                           #  43    0x15067b  1      OPC=nop               
  nop                           #  44    0x15067c  1      OPC=nop               
  nop                           #  45    0x15067d  1      OPC=nop               
  nop                           #  46    0x15067e  1      OPC=nop               
  nop                           #  47    0x15067f  1      OPC=nop               
.L_150680:                      #        0x150680  0      OPC=<label>           
  popq %rbx                     #  48    0x150680  1      OPC=popq_r64_1        
  popq %r11                     #  49    0x150681  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d       #  50    0x150683  7      OPC=andl_r32_imm32    
  nop                           #  51    0x15068a  1      OPC=nop               
  nop                           #  52    0x15068b  1      OPC=nop               
  nop                           #  53    0x15068c  1      OPC=nop               
  nop                           #  54    0x15068d  1      OPC=nop               
  addq %r15, %r11               #  55    0x15068e  3      OPC=addq_r64_r64      
  jmpq %r11                     #  56    0x150691  3      OPC=jmpq_r64          
  nop                           #  57    0x150694  1      OPC=nop               
  nop                           #  58    0x150695  1      OPC=nop               
  nop                           #  59    0x150696  1      OPC=nop               
  nop                           #  60    0x150697  1      OPC=nop               
  nop                           #  61    0x150698  1      OPC=nop               
  nop                           #  62    0x150699  1      OPC=nop               
  nop                           #  63    0x15069a  1      OPC=nop               
  nop                           #  64    0x15069b  1      OPC=nop               
  nop                           #  65    0x15069c  1      OPC=nop               
  nop                           #  66    0x15069d  1      OPC=nop               
  nop                           #  67    0x15069e  1      OPC=nop               
  nop                           #  68    0x15069f  1      OPC=nop               
  nop                           #  69    0x1506a0  1      OPC=nop               
  nop                           #  70    0x1506a1  1      OPC=nop               
  nop                           #  71    0x1506a2  1      OPC=nop               
  nop                           #  72    0x1506a3  1      OPC=nop               
  nop                           #  73    0x1506a4  1      OPC=nop               
  nop                           #  74    0x1506a5  1      OPC=nop               
  nop                           #  75    0x1506a6  1      OPC=nop               
.L_1506a0:                      #        0x1506a7  0      OPC=<label>           
  movl %ebx, %ebx               #  76    0x1506a7  2      OPC=movl_r32_r32      
  movl 0x10(%r15,%rbx,1), %eax  #  77    0x1506a9  5      OPC=movl_r32_m32      
  movl %ebx, %ebx               #  78    0x1506ae  2      OPC=movl_r32_r32      
  movl $0x0, 0x4(%r15,%rbx,1)   #  79    0x1506b0  9      OPC=movl_m32_imm32    
  movl %ebx, %ebx               #  80    0x1506b9  2      OPC=movl_r32_r32      
  orw $0x20, 0xc(%r15,%rbx,1)   #  81    0x1506bb  7      OPC=orw_m16_imm8      
  nop                           #  82    0x1506c2  1      OPC=nop               
  nop                           #  83    0x1506c3  1      OPC=nop               
  nop                           #  84    0x1506c4  1      OPC=nop               
  nop                           #  85    0x1506c5  1      OPC=nop               
  nop                           #  86    0x1506c6  1      OPC=nop               
  movl %ebx, %ebx               #  87    0x1506c7  2      OPC=movl_r32_r32      
  movl %eax, (%r15,%rbx,1)      #  88    0x1506c9  4      OPC=movl_m32_r32      
  movl $0xffffffff, %eax        #  89    0x1506cd  6      OPC=movl_r32_imm32_1  
  jmpq .L_150680                #  90    0x1506d3  2      OPC=jmpq_label        
  nop                           #  91    0x1506d5  1      OPC=nop               
  nop                           #  92    0x1506d6  1      OPC=nop               
  nop                           #  93    0x1506d7  1      OPC=nop               
  nop                           #  94    0x1506d8  1      OPC=nop               
  nop                           #  95    0x1506d9  1      OPC=nop               
  nop                           #  96    0x1506da  1      OPC=nop               
  nop                           #  97    0x1506db  1      OPC=nop               
  nop                           #  98    0x1506dc  1      OPC=nop               
  nop                           #  99    0x1506dd  1      OPC=nop               
  nop                           #  100   0x1506de  1      OPC=nop               
  nop                           #  101   0x1506df  1      OPC=nop               
  nop                           #  102   0x1506e0  1      OPC=nop               
  nop                           #  103   0x1506e1  1      OPC=nop               
  nop                           #  104   0x1506e2  1      OPC=nop               
  nop                           #  105   0x1506e3  1      OPC=nop               
  nop                           #  106   0x1506e4  1      OPC=nop               
  nop                           #  107   0x1506e5  1      OPC=nop               
  nop                           #  108   0x1506e6  1      OPC=nop               
  nop                           #  109   0x1506e7  1      OPC=nop               
                                                                                
.size __ssrefill_r, .-__ssrefill_r

