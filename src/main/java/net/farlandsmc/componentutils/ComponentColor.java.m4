m4_dnl vim:ft=java
m4_changecom(`//', `')
// NOTE: This file is generated from ComponentColor.java.m4
// Generate with `m4 -P src/main/java/net/farlandsmc/componentutils/ComponentColor.java.m4 > src/main/java/net/farlandsmc/componentutils/ComponentColor.java`

package net.farlandsmc.componentutils;

import net.kyori.adventure.text.Component;
import net.kyori.adventure.text.format.Style;
import net.kyori.adventure.text.format.TextColor;

import org.bukkit.Color;
import org.jetbrains.annotations.Contract;

import static net.farlandsmc.componentutils.ComponentUtils.format;
import static net.kyori.adventure.text.format.NamedTextColor.*;

public class ComponentColor {

    // Note: All methods are annotated with `@Contract(pure = true)` so IDEs warn about unused results (same effect as @CheckReturnValue)
m4_define(`implColor', `
    /**
     * Generate a component with the colour of $1.
     *
     * @param format The text to use for the format, uses {@link ComponentUtils#format}
     * @param values The values to use for the format
     */
    @Contract(pure = true)
    public static Component $2(String format, Object... values) {
        return format(format, values).color($1);
    }

    /**
     * Generate a component with the colour of $1 using {@link ComponentUtils#format} with the format of {@code {}}
     *
     * @param obj The object to format
     */
    @Contract(pure = true)
    public static Component $2(Object obj) {
        return $2("{}", obj);
    }

    /**
     * Generate a component with the colour of $1
     *
     * @param str The string to use
     */
    @Contract(pure = true)
    public static Component $2(String str) {
        return Component.text(str).color($1);
    }

    /**
     * Wrap a component with the colour of $1
     *
     * @param comp The Component to wrap
     */
    @Contract(pure = true)
    public static Component $2(Component comp) {
        return Component.empty().append(comp).color($1);
    }')m4_dnl
implColor(`BLACK', black)
implColor(`DARK_BLUE', darkBlue)
implColor(`DARK_GREEN', darkGreen)
implColor(`DARK_AQUA', darkAqua)
implColor(`DARK_RED', darkRed)
implColor(`DARK_PURPLE', darkPurple)
implColor(`GOLD', gold)
implColor(`GRAY', gray)
implColor(`DARK_GRAY', darkGray)
implColor(`BLUE', blue)
implColor(`GREEN', green)
implColor(`AQUA', aqua)
implColor(`RED', red)
implColor(`LIGHT_PURPLE', lightPurple)
implColor(`YELLOW', yellow)
implColor(`WHITE', white)

    /**
     * Generate a component with the specified
     *
     * @param col    The colour to use
     * @param format The text to use for the format, uses `{@link ComponentUtils#format}'
     * @param values The values to use for the format
     */
    @Contract(pure = true)
    public static Component color(TextColor col, String format, Object... values) {
        return format(format, values).color(col);
    }

    /**
     * Generate a component with the colour specified using `{@link ComponentUtils#format}' with the format of {@code {}}
     *
     * @param col The colour to use
     * @param obj The object to format
     */
    @Contract(pure = true)
    public static Component color(TextColor col, Object obj) {
        return color(col, "{}", obj);
    }

    /**
     * Generate a component with the colour provided
     *
     * @param col The colour to use
     * @param str The string to use
     */
    @Contract(pure = true)
    public static Component color(TextColor col, String str) {
        return Component.text(str).color(col);
    }

    /**
     * Wrap a component with the colour provided
     *
     * @param comp The Component to wrap
     */
    @Contract(pure = true)
    public static Component color(TextColor col, Component comp) {
        return Component.empty().append(comp).color(col);
    }

    /**
     * Generate a component with the specified
     *
     * @param col    The colour to use
     * @param format The text to use for the format, uses `{@link ComponentUtils#format}'
     * @param values The values to use for the format
     */
    @Contract(pure = true)
    public static Component color(Color col, String format, Object... values) {
        return format(format, values).color(TextColor.color(col.asRGB()));
    }

    /**
     * Generate a component with the colour specified using `{@link ComponentUtils#format}' with the format of {@code {}}
     *
     * @param col The colour to use
     * @param obj The object to format
     */
    @Contract(pure = true)
    public static Component color(Color col, Object obj) {
        return color(TextColor.color(col.asRGB()), "{}", obj);
    }

    /**
     * Generate a component with the colour provided
     *
     * @param col The colour to use
     * @param str The string to use
     */
    @Contract(pure = true)
    public static Component color(Color col, String str) {
        return Component.text(str).color(TextColor.color(col.asRGB()));
    }

    /**
     * Wrap a component with the colour provided
     *
     * @param comp The Component to wrap
     */
    @Contract(pure = true)
    public static Component color(Color col, Component comp) {
        return Component.empty().append(comp).color(TextColor.color(col.asRGB()));
    }

    /**
     * Generate a component with the specified
     *
     * @param col    The colour to use
     * @param format The text to use for the format, uses {@link ComponentUtils#format}
     * @param values The values to use for the format
     */
    @Contract(pure = true)
    public static Component color(java.awt.Color col, String format, Object... values) {
        return format(format, values).color(TextColor.color(col.getRGB()));
    }

    /**
     * Generate a component with the colour specified using {@link ComponentUtils#format} with the format of {@code {}}
     *
     * @param col The colour to use
     * @param obj The object to format
     */
    @Contract(pure = true)
    public static Component color(java.awt.Color col, Object obj) {
        return color(TextColor.color(col.getRGB()), "{}", obj);
    }

    /**
     * Generate a component with the colour provided
     *
     * @param col The colour to use
     * @param str The string to use
     */
    @Contract(pure = true)
    public static Component color(java.awt.Color col, String str) {
        return Component.text(str).color(TextColor.color(col.getRGB()));
    }

    /**
     * Wrap a component with the colour provided
     *
     * @param comp The Component to wrap
     */
    @Contract(pure = true)
    public static Component color(java.awt.Color col, Component comp) {
        return Component.empty().append(comp).color(TextColor.color(col.getRGB()));
    }

    /**
     * Generate a component with the specified
     *
     * @param col    The colour to use (Parsed with {@link FLUtils#parseColor(String)})
     * @param format The text to use for the format, uses {@link ComponentUtils#format}
     * @param values The values to use for the format
     */
    @Contract(pure = true)
    public static Component color(String col, String format, Object... values) {
        return format(format, values).color(Utils.parseColor(col));
    }

    /**
     * Generate a component with the colour specified using {@link ComponentUtils#format} with the format of {@code {}}
     *
     * @param col The colour to use (Parsed with {@link FLUtils#parseColor(String)})
     * @param obj The object to format
     */
    @Contract(pure = true)
    public static Component color(String col, Object obj) {
        return color(col, "{}", obj);
    }

    /**
     * Generate a component with the colour provided
     *
     * @param col The colour to use (Parsed with {@link FLUtils#parseColor(String)})
     * @param str The string to use
     */
    @Contract(pure = true)
    public static Component color(String col, String str) {
        return Component.text(str).color(Utils.parseColor(col));
    }

    /**
     * Wrap a component with the colour provided
     *
     * @param comp The Component to wrap
     */
    @Contract(pure = true)
    public static Component color(String col, Component comp) {
        return Component.empty().append(comp).color(Utils.parseColor(col));
    }

    /**
     * Generate a component with the specified style
     *
     * @param style  The style to use
     * @param format The text to use for the format, uses {@link ComponentUtils#format}
     * @param values The values to use for the format
     */
    @Contract(pure = true)
    public static Component style(Style style, String format, Object... values) {
        return format(format, values).style(style);
    }

    /**
     * Generate a component with the style specified using {@link ComponentUtils#format} with the format of {@code {}}
     *
     * @param style The colour to use
     * @param obj   The object to format
     */
    @Contract(pure = true)
    public static Component style(Style style, Object obj) {
        return style(style, "{}", obj);
    }

    /**
     * Generate a component with the style provided
     *
     * @param style The style to use
     * @param str   The string to use
     */
    @Contract(pure = true)
    public static Component style(Style style, String str) {
        return Component.text(str).style(style);
    }

    /**
     * Wrap a component with the style provided
     *
     * @param comp The Component to wrap
     */
    @Contract(pure = true)
    public static Component style(Style style, Component comp) {
        return Component.empty().append(comp).style(style);
    }
}
