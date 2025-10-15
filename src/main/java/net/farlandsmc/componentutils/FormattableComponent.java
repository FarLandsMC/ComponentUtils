package net.farlandsmc.componentutils;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import net.kyori.adventure.text.Component;

interface FormattableComponent {
    public @NotNull Component formattedComponent(@Nullable String format);
}
