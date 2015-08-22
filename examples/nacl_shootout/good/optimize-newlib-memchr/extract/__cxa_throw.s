  .text
  .globl __cxa_throw
  .type __cxa_throw, @function

#! file-offset 0x121500
#! rip-offset  0xe1500
#! capacity    192 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
.__cxa_throw:                       #        0xe1500  0      OPC=<label>         
  movl 0xff8f41e(%rip), %eax        #  1     0xe1500  6      OPC=movl_r32_m32    
  pushq %rbx                        #  2     0xe1506  1      OPC=pushq_r64_1     
  leal -0x60(%rdi), %ebx            #  3     0xe1507  3      OPC=leal_r32_m16    
  movl %ebx, %ebx                   #  4     0xe150a  2      OPC=movl_r32_r32    
  movl %esi, 0x10(%r15,%rbx,1)      #  5     0xe150c  5      OPC=movl_m32_r32    
  movl %ebx, %ebx                   #  6     0xe1511  2      OPC=movl_r32_r32    
  movl %edx, 0x14(%r15,%rbx,1)      #  7     0xe1513  5      OPC=movl_m32_r32    
  movl %ebx, %ebx                   #  8     0xe1518  2      OPC=movl_r32_r32    
  movl %eax, 0x18(%r15,%rbx,1)      #  9     0xe151a  5      OPC=movl_m32_r32    
  nop                               #  10    0xe151f  1      OPC=nop             
  movl 0xff8f402(%rip), %eax        #  11    0xe1520  6      OPC=movl_r32_m32    
  movl %ebx, %ebx                   #  12    0xe1526  2      OPC=movl_r32_r32    
  movl $0x1, (%r15,%rbx,1)          #  13    0xe1528  8      OPC=movl_m32_imm32  
  movl %ebx, %ebx                   #  14    0xe1530  2      OPC=movl_r32_r32    
  movl $0xe15c0, 0x48(%r15,%rbx,1)  #  15    0xe1532  9      OPC=movl_m32_imm32  
  nop                               #  16    0xe153b  1      OPC=nop             
  nop                               #  17    0xe153c  1      OPC=nop             
  nop                               #  18    0xe153d  1      OPC=nop             
  nop                               #  19    0xe153e  1      OPC=nop             
  nop                               #  20    0xe153f  1      OPC=nop             
  movl %ebx, %ebx                   #  21    0xe1540  2      OPC=movl_r32_r32    
  movl %eax, 0x1c(%r15,%rbx,1)      #  22    0xe1542  5      OPC=movl_m32_r32    
  movq $0x474e5543432b2b00, %rax    #  23    0xe1547  10     OPC=movq_r64_imm64  
  movl %ebx, %ebx                   #  24    0xe1551  2      OPC=movl_r32_r32    
  movq %rax, 0x40(%r15,%rbx,1)      #  25    0xe1553  5      OPC=movq_m64_r64    
  addl $0x40, %ebx                  #  26    0xe1558  3      OPC=addl_r32_imm8   
  movl %ebx, %edi                   #  27    0xe155b  2      OPC=movl_r32_r32    
  nop                               #  28    0xe155d  1      OPC=nop             
  nop                               #  29    0xe155e  1      OPC=nop             
  nop                               #  30    0xe155f  1      OPC=nop             
  nop                               #  31    0xe1560  1      OPC=nop             
  nop                               #  32    0xe1561  1      OPC=nop             
  nop                               #  33    0xe1562  1      OPC=nop             
  nop                               #  34    0xe1563  1      OPC=nop             
  nop                               #  35    0xe1564  1      OPC=nop             
  nop                               #  36    0xe1565  1      OPC=nop             
  nop                               #  37    0xe1566  1      OPC=nop             
  nop                               #  38    0xe1567  1      OPC=nop             
  nop                               #  39    0xe1568  1      OPC=nop             
  nop                               #  40    0xe1569  1      OPC=nop             
  nop                               #  41    0xe156a  1      OPC=nop             
  nop                               #  42    0xe156b  1      OPC=nop             
  nop                               #  43    0xe156c  1      OPC=nop             
  nop                               #  44    0xe156d  1      OPC=nop             
  nop                               #  45    0xe156e  1      OPC=nop             
  nop                               #  46    0xe156f  1      OPC=nop             
  nop                               #  47    0xe1570  1      OPC=nop             
  nop                               #  48    0xe1571  1      OPC=nop             
  nop                               #  49    0xe1572  1      OPC=nop             
  nop                               #  50    0xe1573  1      OPC=nop             
  nop                               #  51    0xe1574  1      OPC=nop             
  nop                               #  52    0xe1575  1      OPC=nop             
  nop                               #  53    0xe1576  1      OPC=nop             
  nop                               #  54    0xe1577  1      OPC=nop             
  nop                               #  55    0xe1578  1      OPC=nop             
  nop                               #  56    0xe1579  1      OPC=nop             
  nop                               #  57    0xe157a  1      OPC=nop             
  callq ._Unwind_RaiseException     #  58    0xe157b  5      OPC=callq_label     
  movl %ebx, %edi                   #  59    0xe1580  2      OPC=movl_r32_r32    
  nop                               #  60    0xe1582  1      OPC=nop             
  nop                               #  61    0xe1583  1      OPC=nop             
  nop                               #  62    0xe1584  1      OPC=nop             
  nop                               #  63    0xe1585  1      OPC=nop             
  nop                               #  64    0xe1586  1      OPC=nop             
  nop                               #  65    0xe1587  1      OPC=nop             
  nop                               #  66    0xe1588  1      OPC=nop             
  nop                               #  67    0xe1589  1      OPC=nop             
  nop                               #  68    0xe158a  1      OPC=nop             
  nop                               #  69    0xe158b  1      OPC=nop             
  nop                               #  70    0xe158c  1      OPC=nop             
  nop                               #  71    0xe158d  1      OPC=nop             
  nop                               #  72    0xe158e  1      OPC=nop             
  nop                               #  73    0xe158f  1      OPC=nop             
  nop                               #  74    0xe1590  1      OPC=nop             
  nop                               #  75    0xe1591  1      OPC=nop             
  nop                               #  76    0xe1592  1      OPC=nop             
  nop                               #  77    0xe1593  1      OPC=nop             
  nop                               #  78    0xe1594  1      OPC=nop             
  nop                               #  79    0xe1595  1      OPC=nop             
  nop                               #  80    0xe1596  1      OPC=nop             
  nop                               #  81    0xe1597  1      OPC=nop             
  nop                               #  82    0xe1598  1      OPC=nop             
  nop                               #  83    0xe1599  1      OPC=nop             
  nop                               #  84    0xe159a  1      OPC=nop             
  callq .__cxa_begin_catch          #  85    0xe159b  5      OPC=callq_label     
  nop                               #  86    0xe15a0  1      OPC=nop             
  nop                               #  87    0xe15a1  1      OPC=nop             
  nop                               #  88    0xe15a2  1      OPC=nop             
  nop                               #  89    0xe15a3  1      OPC=nop             
  nop                               #  90    0xe15a4  1      OPC=nop             
  nop                               #  91    0xe15a5  1      OPC=nop             
  nop                               #  92    0xe15a6  1      OPC=nop             
  nop                               #  93    0xe15a7  1      OPC=nop             
  nop                               #  94    0xe15a8  1      OPC=nop             
  nop                               #  95    0xe15a9  1      OPC=nop             
  nop                               #  96    0xe15aa  1      OPC=nop             
  nop                               #  97    0xe15ab  1      OPC=nop             
  nop                               #  98    0xe15ac  1      OPC=nop             
  nop                               #  99    0xe15ad  1      OPC=nop             
  nop                               #  100   0xe15ae  1      OPC=nop             
  nop                               #  101   0xe15af  1      OPC=nop             
  nop                               #  102   0xe15b0  1      OPC=nop             
  nop                               #  103   0xe15b1  1      OPC=nop             
  nop                               #  104   0xe15b2  1      OPC=nop             
  nop                               #  105   0xe15b3  1      OPC=nop             
  nop                               #  106   0xe15b4  1      OPC=nop             
  nop                               #  107   0xe15b5  1      OPC=nop             
  nop                               #  108   0xe15b6  1      OPC=nop             
  nop                               #  109   0xe15b7  1      OPC=nop             
  nop                               #  110   0xe15b8  1      OPC=nop             
  nop                               #  111   0xe15b9  1      OPC=nop             
  nop                               #  112   0xe15ba  1      OPC=nop             
  callq ._ZSt9terminatev            #  113   0xe15bb  5      OPC=callq_label     
                                                                                 
.size __cxa_throw, .-__cxa_throw

