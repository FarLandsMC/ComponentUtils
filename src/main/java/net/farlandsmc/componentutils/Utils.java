package net.farlandsmc.componentutils;

import java.lang.reflect.Method;
import java.util.function.Function;

import org.jetbrains.annotations.Contract;

import net.kyori.adventure.text.format.NamedTextColor;
import net.kyori.adventure.text.format.TextColor;

class Utils {
    /**
     * Returns the value returned by the given function with the given input,
     * or null if the function throws an exception.
     *
     * @param valueOf the value-of function.
     * @param input   the input.
     * @param <T>     the return type.
     * @return the value returned by the given function with the given input, or null if the function throws an
     * exception.
     */
    @Contract(pure = true)
    public static <T> T safeValueOf(Function<String, T> valueOf, String input) {
        try {
            return valueOf.apply(input);
        } catch (Throwable t) {
            return null;
        }
    }

    @Contract(pure = true)
    static TextColor parseColor(String s) {
        if (s.startsWith("#")) {
            return TextColor.fromCSSHexString(s);
        }
        return NamedTextColor.NAMES.value(s.toLowerCase().replace('-', '_'));
    }

    /**
     * Converts the given enumeration element's name (which should be all capitalized with underscores) and replaces the
     * underscores with hyphens and converts the string to lower case.
     *
     * @param e the enumeration element.
     * @return the formatted name of the given element as defined above.
     */
    public static <E extends Enum<E>> String formattedName(Enum<E> e) {
        return e.name().replaceAll("_", "-").toLowerCase();
    }
}
