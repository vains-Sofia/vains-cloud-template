package com.vains.enums;

public enum TestEnum implements BaseEnum<TestEnum, String> {

    TEST_ENUM_01("test01", "1"),

    TEST_ENUM_02("test02", "2"),

    TEST_ENUM_03("test03", "3");

    private final String name;

    private final String value;

    TestEnum(String name, String value) {
        this.name = name;
        this.value = value;
    }

    public String getName() {
        return name;
    }

    @Override
    public String getValue() {
        return value;
    }



}