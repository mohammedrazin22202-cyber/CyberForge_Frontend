# Redesigned Navbar UI Changelog

Detailed breakdown of design decisions, implementation steps, and bug fixes for the custom cyberpunk navigation bar.

## Phase 1: Layout & Markup
- Wrapped desktop nav links in a relative positioned `.nav-links-container`.
- Added two separate absolute positioned outlines: `svg.nav-outline-active` (active section) and `svg.nav-outline-hover` (hover tracker).

## Phase 2: CSS Styling & Variables
- Defined separate outline designs: active (cyan/blue glow) and hover (green glow).
- Added glowing outer corner brackets to the main navigation box boundaries.

## Phase 3: Coordinate Calculation
- Created JavaScript coordinate calculator to measure target links relative to the container.
- Resizes and repositions outline shapes dynamically.

## Phase 4: Scroll-Spy Integration
- Bound active outline positioning to the scroll-spy observer.
- Automatically slides the active blue corners as the user scrolls.

## Phase 5: Scroll-Spy Bounds Optimization
- Restricted scroll-spy sensor region to a narrow top-middle strip (`rootMargin: "-25% 0px -70% 0px"`).
- Eliminated section overlap collisions on large displays.

## Phase 6: Wording Renamed to Skills
- Renamed 'Capabilities' menu links to 'Skills' in desktop and mobile viewport panels.

## Phase 7: Programmatic Scroll Lock
- Added click event listeners that temporarily lock scroll-spy updates during smooth scrolling animations, avoiding intermediate flickering.

## Phase 8: Diagonal Corners
- Configured active corners (Top-Right/Bottom-Left) to mirror hover corners (Top-Left/Bottom-Right) diagonally.

## Phase 9: CSS Specificity Conflict Fix
- Switched styling properties (`stroke-dasharray`, `stroke-dashoffset`) to SVG presentation attributes to bypass CSS unit validation issues.

## Phase 10: Centered Corner Brackets Math
- Updated active outline dashoffset calculation to `106 - wUnits` to center brackets perfectly on the corners.

## Phase 11: Red Overlap Lock-on
- Implemented overlap checking: turning both outlines into neon red to form a solid 4-cornered lock-on box when active link is hovered.
- Set default active class on About link for page load.


## Phase 12: Custom Outer Corners
- Configured custom theme overrides for the main navigation box corners (`.nav-bracket`).
- Styled outer corners white in the Red Alert theme for high contrast.
- Styled outer corners green in the Cyan Hacker theme.
- Styled outer corners green in the Minimal Pro theme.

## Phase 13: Theme-Adaptive Inner Corners
- Added theme-specific CSS overrides for active and hover inner outline rect strokes.
- Synced inner outline highlight colors to white in the Red Alert theme.
- Synced inner outline highlight colors to green in the Cyan Hacker theme.
- Synced inner outline highlight colors to green in the Minimal Pro theme.

## Phase 14: Reverting Outer Border Colors
- Reverted outer corner brackets (`.nav-bracket`) to default theme variables to keep their original colors synchronized with body themes.

## Phase 15: Green Colliding Corners
- Configured hover outline to statically green and updated the overlap check to overlap-green.

## Phase 16: Non-Repeating Color Palette
- Changed the hover corners to static white and active corners to blue/cyan to prevent green color repeats in Matrix Green theme.
