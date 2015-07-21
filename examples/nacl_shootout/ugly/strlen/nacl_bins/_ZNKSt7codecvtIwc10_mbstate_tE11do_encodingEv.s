  .text
  .globl _ZNKSt7codecvtIwc10_mbstate_tE11do_encodingEv
  .type _ZNKSt7codecvtIwc10_mbstate_tE11do_encodingEv, @function

#! file-offset 0x11a8a0
#! rip-offset  0xda8a0
#! capacity    128 bytes

# Text                                           #  Line  RIP      Bytes  Opcode    
._ZNKSt7codecvtIwc10_mbstate_tE11do_encodingEv:  #        0xda8a0  0      OPC=0     
  subl $0x8, %esp                                #  1     0xda8a0  3      OPC=2384  
  addq %r15, %rsp                                #  2     0xda8a3  3      OPC=72    
  nop                                            #  3     0xda8a6  1      OPC=1343  
  nop                                            #  4     0xda8a7  1      OPC=1343  
  nop                                            #  5     0xda8a8  1      OPC=1343  
  nop                                            #  6     0xda8a9  1      OPC=1343  
  nop                                            #  7     0xda8aa  1      OPC=1343  
  nop                                            #  8     0xda8ab  1      OPC=1343  
  nop                                            #  9     0xda8ac  1      OPC=1343  
  nop                                            #  10    0xda8ad  1      OPC=1343  
  nop                                            #  11    0xda8ae  1      OPC=1343  
  nop                                            #  12    0xda8af  1      OPC=1343  
  nop                                            #  13    0xda8b0  1      OPC=1343  
  nop                                            #  14    0xda8b1  1      OPC=1343  
  nop                                            #  15    0xda8b2  1      OPC=1343  
  nop                                            #  16    0xda8b3  1      OPC=1343  
  nop                                            #  17    0xda8b4  1      OPC=1343  
  nop                                            #  18    0xda8b5  1      OPC=1343  
  nop                                            #  19    0xda8b6  1      OPC=1343  
  nop                                            #  20    0xda8b7  1      OPC=1343  
  nop                                            #  21    0xda8b8  1      OPC=1343  
  nop                                            #  22    0xda8b9  1      OPC=1343  
  nop                                            #  23    0xda8ba  1      OPC=1343  
  callq .__locale_mb_cur_max                     #  24    0xda8bb  5      OPC=260   
  cmpl $0x1, %eax                                #  25    0xda8c0  3      OPC=470   
  sete %al                                       #  26    0xda8c3  3      OPC=2178  
  addl $0x8, %esp                                #  27    0xda8c6  3      OPC=65    
  addq %r15, %rsp                                #  28    0xda8c9  3      OPC=72    
  popq %r11                                      #  29    0xda8cc  2      OPC=1694  
  movzbl %al, %eax                               #  30    0xda8ce  3      OPC=1304  
  andl $0xffffffe0, %r11d                        #  31    0xda8d1  7      OPC=131   
  nop                                            #  32    0xda8d8  1      OPC=1343  
  nop                                            #  33    0xda8d9  1      OPC=1343  
  nop                                            #  34    0xda8da  1      OPC=1343  
  nop                                            #  35    0xda8db  1      OPC=1343  
  addq %r15, %r11                                #  36    0xda8dc  3      OPC=72    
  jmpq %r11                                      #  37    0xda8df  3      OPC=928   
  nop                                            #  38    0xda8e2  1      OPC=1343  
  nop                                            #  39    0xda8e3  1      OPC=1343  
  nop                                            #  40    0xda8e4  1      OPC=1343  
  nop                                            #  41    0xda8e5  1      OPC=1343  
  nop                                            #  42    0xda8e6  1      OPC=1343  
  cmpq $0xff, %rdx                               #  43    0xda8e7  4      OPC=475   
  movl %eax, %edi                                #  44    0xda8eb  2      OPC=1157  
  je .L_da900                                    #  45    0xda8ed  6      OPC=893   
  nop                                            #  46    0xda8f3  1      OPC=1343  
  nop                                            #  47    0xda8f4  1      OPC=1343  
  nop                                            #  48    0xda8f5  1      OPC=1343  
  nop                                            #  49    0xda8f6  1      OPC=1343  
  nop                                            #  50    0xda8f7  1      OPC=1343  
  nop                                            #  51    0xda8f8  1      OPC=1343  
  nop                                            #  52    0xda8f9  1      OPC=1343  
  nop                                            #  53    0xda8fa  1      OPC=1343  
  nop                                            #  54    0xda8fb  1      OPC=1343  
  nop                                            #  55    0xda8fc  1      OPC=1343  
  nop                                            #  56    0xda8fd  1      OPC=1343  
  nop                                            #  57    0xda8fe  1      OPC=1343  
  nop                                            #  58    0xda8ff  1      OPC=1343  
  nop                                            #  59    0xda900  1      OPC=1343  
  nop                                            #  60    0xda901  1      OPC=1343  
  nop                                            #  61    0xda902  1      OPC=1343  
  nop                                            #  62    0xda903  1      OPC=1343  
  nop                                            #  63    0xda904  1      OPC=1343  
  nop                                            #  64    0xda905  1      OPC=1343  
  nop                                            #  65    0xda906  1      OPC=1343  
  nop                                            #  66    0xda907  1      OPC=1343  
  callq ._Unwind_Resume                          #  67    0xda908  5      OPC=260   
.L_da900:                                        #        0xda90d  0      OPC=0     
  nop                                            #  68    0xda90d  1      OPC=1343  
  nop                                            #  69    0xda90e  1      OPC=1343  
  nop                                            #  70    0xda90f  1      OPC=1343  
  nop                                            #  71    0xda910  1      OPC=1343  
  nop                                            #  72    0xda911  1      OPC=1343  
  nop                                            #  73    0xda912  1      OPC=1343  
  nop                                            #  74    0xda913  1      OPC=1343  
  nop                                            #  75    0xda914  1      OPC=1343  
  nop                                            #  76    0xda915  1      OPC=1343  
  nop                                            #  77    0xda916  1      OPC=1343  
  nop                                            #  78    0xda917  1      OPC=1343  
  nop                                            #  79    0xda918  1      OPC=1343  
  nop                                            #  80    0xda919  1      OPC=1343  
  nop                                            #  81    0xda91a  1      OPC=1343  
  nop                                            #  82    0xda91b  1      OPC=1343  
  nop                                            #  83    0xda91c  1      OPC=1343  
  nop                                            #  84    0xda91d  1      OPC=1343  
  nop                                            #  85    0xda91e  1      OPC=1343  
  nop                                            #  86    0xda91f  1      OPC=1343  
  nop                                            #  87    0xda920  1      OPC=1343  
  nop                                            #  88    0xda921  1      OPC=1343  
  nop                                            #  89    0xda922  1      OPC=1343  
  nop                                            #  90    0xda923  1      OPC=1343  
  nop                                            #  91    0xda924  1      OPC=1343  
  nop                                            #  92    0xda925  1      OPC=1343  
  nop                                            #  93    0xda926  1      OPC=1343  
  nop                                            #  94    0xda927  1      OPC=1343  
  callq .__cxa_call_unexpected                   #  95    0xda928  5      OPC=260   
                                                                                    
.size _ZNKSt7codecvtIwc10_mbstate_tE11do_encodingEv, .-_ZNKSt7codecvtIwc10_mbstate_tE11do_encodingEv

