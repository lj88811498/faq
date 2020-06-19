package com.github.edu.modular.edu.enums;

/**
 * @author TC
 */
public enum MatchType {
    MIN_MATCH("最小匹配规则"), MAX_MATCH("最大匹配规则");

    String desc;

    MatchType(String desc) {
        this.desc = desc;
    }
}
