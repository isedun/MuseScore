/*
 * SPDX-License-Identifier: GPL-3.0-only
 * MuseScore-Studio-CLA-applies
 *
 * MuseScore Studio
 * Music Composition & Notation
 *
 * Copyright (C) 2021 MuseScore Limited
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */
import QtQuick 2.15
import QtQuick.Controls 2.15

import MuseScore.Preferences 1.0
import Muse.Shortcuts 1.0

PreferencesPage {
    id: root

    contentFillsAvailableHeight: true

    property alias shortcutCodeKey: page.shortcutCodeKey

    function apply() {
        return page.apply()
    }

    function reset() {
        page.reset()
    }

    ShortcutsPage {
        id: page

        anchors.fill: parent

        navigationSection: root.navigationSection
        navigationOrderStart: root.navigationOrderStart
    }
}
