/*
 * link.ld
 */

OUTPUT_FORMAT(elf32-i386) /* exec set to 32 bit*/
ENTRY(start) /*  */
SECTIONS{ /* define the layout of the exec */
	. = 0x100000; /* kernel code starts at the address */
	.text : { *(.text) } /* the asterisk is a wildcard character that matches any file name */
	.data : { *(.data) } 
	.bss  : { *(.bss)  }

}
