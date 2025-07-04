# AXiX-official/binaryPrimitives

This library provides `Read` and `Write` functions for **primitive numeric types** `ArrayView[Byte]`, inspired by C#'s `System.Buffers.Binary.BinaryPrimitives`.

## Example

### Read

```moonbit
test "read_example" {
  let data: Array[Byte] = ... 
  let value1: Int = @binaryPrimitives.readI32Le(data)
  let value2: Float = @binaryPrimitives.readF32Be(data[4:])
  let value3: Bool = @binaryPrimitives.readBool(data[8:])
}
```

### Write

```moonbit
test "write_example" {
  let arr : Array[Byte] = Array::makei(24, fn(i) { 0 })
  @binaryPrimitives.writeUI64Le(arr[:], 123456)
  @binaryPrimitives.writeF64Le(arr[8:], 1233.14)
  @binaryPrimitives.writeBool(arr[16:], true)
}
```

## Supported Types

This library supports all primitive types in MoonBit except for `BigInt`.

**Note:** `BigInt` is not currently supported.
