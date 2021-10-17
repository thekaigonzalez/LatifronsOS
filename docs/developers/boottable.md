# Boot Table

If you're familiar with the `efibootmgr` command on Linux, you'll have no issues understanding this.

## Boot Table Priority

### Basic Explanation

The boot table runs functionalities by id, and index. This helps with managing different versions of Snarwin.

### Long Explanation

The boot table represents multiple boot drives.

By default the 2nd index on the table is always the first to be executed. You can see it in the source code of ./snarwin.

```lua


-- Create a new boot 
snarboot.order:create_boot(0x02, "Snarwin SASH", function()
    print("I'm going to use SASH, you can change this later.")
    sash:main()
end)

sbootstrap:checkimpl()

```

You can use external libraries with the Boot table, that is valid.

The documentation of create_boot is as follows.

```lua

method order:create_boot(idx: any, name: any, init: any)

Create boot process without dirtying the boot table.

```