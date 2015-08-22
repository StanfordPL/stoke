  .text
  .globl _ZNKSt8numpunctIcE12do_falsenameEv
  .type _ZNKSt8numpunctIcE12do_falsenameEv, @function

#! file-offset 0xbe800
#! rip-offset  0x7e800
#! capacity    128 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIcE12do_falsenameEv:  #        0x7e800  0      OPC=<label>         
  pushq %rbx                          #  1     0x7e800  1      OPC=pushq_r64_1     
  movl %esi, %esi                     #  2     0x7e801  2      OPC=movl_r32_r32    
  movl %edi, %ebx                     #  3     0x7e803  2      OPC=movl_r32_r32    
  movl %ebx, %edi                     #  4     0x7e805  2      OPC=movl_r32_r32    
  subl $0x10, %esp                    #  5     0x7e807  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                     #  6     0x7e80a  3      OPC=addq_r64_r64    
  movl %esi, %esi                     #  7     0x7e80d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax         #  8     0x7e80f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                #  9     0x7e814  4      OPC=leal_r32_m16    
  movl %eax, %eax                     #  10    0x7e818  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %esi        #  11    0x7e81a  5      OPC=movl_r32_m32    
  nop                                 #  12    0x7e81f  1      OPC=nop             
  nop                                 #  13    0x7e820  1      OPC=nop             
  nop                                 #  14    0x7e821  1      OPC=nop             
  nop                                 #  15    0x7e822  1      OPC=nop             
  nop                                 #  16    0x7e823  1      OPC=nop             
  nop                                 #  17    0x7e824  1      OPC=nop             
  nop                                 #  18    0x7e825  1      OPC=nop             
  nop                                 #  19    0x7e826  1      OPC=nop             
  nop                                 #  20    0x7e827  1      OPC=nop             
  nop                                 #  21    0x7e828  1      OPC=nop             
  nop                                 #  22    0x7e829  1      OPC=nop             
  nop                                 #  23    0x7e82a  1      OPC=nop             
  nop                                 #  24    0x7e82b  1      OPC=nop             
  nop                                 #  25    0x7e82c  1      OPC=nop             
  nop                                 #  26    0x7e82d  1      OPC=nop             
  nop                                 #  27    0x7e82e  1      OPC=nop             
  nop                                 #  28    0x7e82f  1      OPC=nop             
  nop                                 #  29    0x7e830  1      OPC=nop             
  nop                                 #  30    0x7e831  1      OPC=nop             
  nop                                 #  31    0x7e832  1      OPC=nop             
  nop                                 #  32    0x7e833  1      OPC=nop             
  nop                                 #  33    0x7e834  1      OPC=nop             
  nop                                 #  34    0x7e835  1      OPC=nop             
  nop                                 #  35    0x7e836  1      OPC=nop             
  nop                                 #  36    0x7e837  1      OPC=nop             
  nop                                 #  37    0x7e838  1      OPC=nop             
  nop                                 #  38    0x7e839  1      OPC=nop             
  nop                                 #  39    0x7e83a  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE           #  40    0x7e83b  5      OPC=callq_label     
  movl %ebx, %eax                     #  41    0x7e840  2      OPC=movl_r32_r32    
  addl $0x10, %esp                    #  42    0x7e842  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                     #  43    0x7e845  3      OPC=addq_r64_r64    
  popq %rbx                           #  44    0x7e848  1      OPC=popq_r64_1      
  popq %r11                           #  45    0x7e849  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  46    0x7e84b  7      OPC=andl_r32_imm32  
  nop                                 #  47    0x7e852  1      OPC=nop             
  nop                                 #  48    0x7e853  1      OPC=nop             
  nop                                 #  49    0x7e854  1      OPC=nop             
  nop                                 #  50    0x7e855  1      OPC=nop             
  addq %r15, %r11                     #  51    0x7e856  3      OPC=addq_r64_r64    
  jmpq %r11                           #  52    0x7e859  3      OPC=jmpq_r64        
  nop                                 #  53    0x7e85c  1      OPC=nop             
  nop                                 #  54    0x7e85d  1      OPC=nop             
  nop                                 #  55    0x7e85e  1      OPC=nop             
  nop                                 #  56    0x7e85f  1      OPC=nop             
  nop                                 #  57    0x7e860  1      OPC=nop             
  nop                                 #  58    0x7e861  1      OPC=nop             
  nop                                 #  59    0x7e862  1      OPC=nop             
  nop                                 #  60    0x7e863  1      OPC=nop             
  nop                                 #  61    0x7e864  1      OPC=nop             
  nop                                 #  62    0x7e865  1      OPC=nop             
  nop                                 #  63    0x7e866  1      OPC=nop             
  movl %eax, %edi                     #  64    0x7e867  2      OPC=movl_r32_r32    
  nop                                 #  65    0x7e869  1      OPC=nop             
  nop                                 #  66    0x7e86a  1      OPC=nop             
  nop                                 #  67    0x7e86b  1      OPC=nop             
  nop                                 #  68    0x7e86c  1      OPC=nop             
  nop                                 #  69    0x7e86d  1      OPC=nop             
  nop                                 #  70    0x7e86e  1      OPC=nop             
  nop                                 #  71    0x7e86f  1      OPC=nop             
  nop                                 #  72    0x7e870  1      OPC=nop             
  nop                                 #  73    0x7e871  1      OPC=nop             
  nop                                 #  74    0x7e872  1      OPC=nop             
  nop                                 #  75    0x7e873  1      OPC=nop             
  nop                                 #  76    0x7e874  1      OPC=nop             
  nop                                 #  77    0x7e875  1      OPC=nop             
  nop                                 #  78    0x7e876  1      OPC=nop             
  nop                                 #  79    0x7e877  1      OPC=nop             
  nop                                 #  80    0x7e878  1      OPC=nop             
  nop                                 #  81    0x7e879  1      OPC=nop             
  nop                                 #  82    0x7e87a  1      OPC=nop             
  nop                                 #  83    0x7e87b  1      OPC=nop             
  nop                                 #  84    0x7e87c  1      OPC=nop             
  nop                                 #  85    0x7e87d  1      OPC=nop             
  nop                                 #  86    0x7e87e  1      OPC=nop             
  nop                                 #  87    0x7e87f  1      OPC=nop             
  nop                                 #  88    0x7e880  1      OPC=nop             
  nop                                 #  89    0x7e881  1      OPC=nop             
  callq ._Unwind_Resume               #  90    0x7e882  5      OPC=callq_label     
                                                                                   
.size _ZNKSt8numpunctIcE12do_falsenameEv, .-_ZNKSt8numpunctIcE12do_falsenameEv

