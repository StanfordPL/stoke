  .text
  .globl _ZN17__eh_globals_initD1Ev
  .type _ZN17__eh_globals_initD1Ev, @function

#! file-offset 0x120160
#! rip-offset  0xe0160
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
._ZN17__eh_globals_initD1Ev:   #        0xe0160  0      OPC=0     
  pushq %rbx                   #  1     0xe0160  1      OPC=1861  
  movl %edi, %ebx              #  2     0xe0161  2      OPC=1157  
  movl %ebx, %ebx              #  3     0xe0163  2      OPC=1157  
  cmpb $0x0, 0x4(%r15,%rbx,1)  #  4     0xe0165  6      OPC=461   
  jne .L_e01a0                 #  5     0xe016b  6      OPC=963   
  nop                          #  6     0xe0171  1      OPC=1343  
  nop                          #  7     0xe0172  1      OPC=1343  
  movl %ebx, %ebx              #  8     0xe0173  2      OPC=1157  
  movb $0x0, 0x4(%r15,%rbx,1)  #  9     0xe0175  6      OPC=1140  
  popq %rbx                    #  10    0xe017b  1      OPC=1694  
  popq %r11                    #  11    0xe017c  2      OPC=1694  
  nop                          #  12    0xe017e  1      OPC=1343  
  nop                          #  13    0xe017f  1      OPC=1343  
  nop                          #  14    0xe0180  1      OPC=1343  
  nop                          #  15    0xe0181  1      OPC=1343  
  nop                          #  16    0xe0182  1      OPC=1343  
  nop                          #  17    0xe0183  1      OPC=1343  
  nop                          #  18    0xe0184  1      OPC=1343  
  nop                          #  19    0xe0185  1      OPC=1343  
  andl $0xffffffe0, %r11d      #  20    0xe0186  7      OPC=131   
  nop                          #  21    0xe018d  1      OPC=1343  
  nop                          #  22    0xe018e  1      OPC=1343  
  nop                          #  23    0xe018f  1      OPC=1343  
  nop                          #  24    0xe0190  1      OPC=1343  
  addq %r15, %r11              #  25    0xe0191  3      OPC=72    
  jmpq %r11                    #  26    0xe0194  3      OPC=928   
  nop                          #  27    0xe0197  1      OPC=1343  
  nop                          #  28    0xe0198  1      OPC=1343  
  nop                          #  29    0xe0199  1      OPC=1343  
  nop                          #  30    0xe019a  1      OPC=1343  
  nop                          #  31    0xe019b  1      OPC=1343  
  nop                          #  32    0xe019c  1      OPC=1343  
  nop                          #  33    0xe019d  1      OPC=1343  
  nop                          #  34    0xe019e  1      OPC=1343  
  nop                          #  35    0xe019f  1      OPC=1343  
  nop                          #  36    0xe01a0  1      OPC=1343  
  nop                          #  37    0xe01a1  1      OPC=1343  
  nop                          #  38    0xe01a2  1      OPC=1343  
  nop                          #  39    0xe01a3  1      OPC=1343  
  nop                          #  40    0xe01a4  1      OPC=1343  
  nop                          #  41    0xe01a5  1      OPC=1343  
  nop                          #  42    0xe01a6  1      OPC=1343  
  nop                          #  43    0xe01a7  1      OPC=1343  
  nop                          #  44    0xe01a8  1      OPC=1343  
  nop                          #  45    0xe01a9  1      OPC=1343  
  nop                          #  46    0xe01aa  1      OPC=1343  
  nop                          #  47    0xe01ab  1      OPC=1343  
  nop                          #  48    0xe01ac  1      OPC=1343  
.L_e01a0:                      #        0xe01ad  0      OPC=0     
  movl %ebx, %ebx              #  49    0xe01ad  2      OPC=1157  
  movl (%r15,%rbx,1), %edi     #  50    0xe01af  4      OPC=1156  
  nop                          #  51    0xe01b3  1      OPC=1343  
  nop                          #  52    0xe01b4  1      OPC=1343  
  nop                          #  53    0xe01b5  1      OPC=1343  
  nop                          #  54    0xe01b6  1      OPC=1343  
  nop                          #  55    0xe01b7  1      OPC=1343  
  nop                          #  56    0xe01b8  1      OPC=1343  
  nop                          #  57    0xe01b9  1      OPC=1343  
  nop                          #  58    0xe01ba  1      OPC=1343  
  nop                          #  59    0xe01bb  1      OPC=1343  
  nop                          #  60    0xe01bc  1      OPC=1343  
  nop                          #  61    0xe01bd  1      OPC=1343  
  nop                          #  62    0xe01be  1      OPC=1343  
  nop                          #  63    0xe01bf  1      OPC=1343  
  nop                          #  64    0xe01c0  1      OPC=1343  
  nop                          #  65    0xe01c1  1      OPC=1343  
  nop                          #  66    0xe01c2  1      OPC=1343  
  nop                          #  67    0xe01c3  1      OPC=1343  
  nop                          #  68    0xe01c4  1      OPC=1343  
  nop                          #  69    0xe01c5  1      OPC=1343  
  nop                          #  70    0xe01c6  1      OPC=1343  
  nop                          #  71    0xe01c7  1      OPC=1343  
  callq .pthread_key_delete    #  72    0xe01c8  5      OPC=260   
  movl %ebx, %ebx              #  73    0xe01cd  2      OPC=1157  
  movb $0x0, 0x4(%r15,%rbx,1)  #  74    0xe01cf  6      OPC=1140  
  popq %rbx                    #  75    0xe01d5  1      OPC=1694  
  popq %r11                    #  76    0xe01d6  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  77    0xe01d8  7      OPC=131   
  nop                          #  78    0xe01df  1      OPC=1343  
  nop                          #  79    0xe01e0  1      OPC=1343  
  nop                          #  80    0xe01e1  1      OPC=1343  
  nop                          #  81    0xe01e2  1      OPC=1343  
  addq %r15, %r11              #  82    0xe01e3  3      OPC=72    
  jmpq %r11                    #  83    0xe01e6  3      OPC=928   
  nop                          #  84    0xe01e9  1      OPC=1343  
  nop                          #  85    0xe01ea  1      OPC=1343  
  nop                          #  86    0xe01eb  1      OPC=1343  
  nop                          #  87    0xe01ec  1      OPC=1343  
  nop                          #  88    0xe01ed  1      OPC=1343  
  nop                          #  89    0xe01ee  1      OPC=1343  
  nop                          #  90    0xe01ef  1      OPC=1343  
  nop                          #  91    0xe01f0  1      OPC=1343  
  nop                          #  92    0xe01f1  1      OPC=1343  
  nop                          #  93    0xe01f2  1      OPC=1343  
  nop                          #  94    0xe01f3  1      OPC=1343  
                                                                  
.size _ZN17__eh_globals_initD1Ev, .-_ZN17__eh_globals_initD1Ev

