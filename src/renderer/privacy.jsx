import React from 'react';

import styles from './privacy.css';

const PrivacyElement = () => (
    <div className={styles.privacyBox}>
        <h1>Privacy Policy</h1>

        <p>We believe that the best privacy policy is one we don't have to write.</p>

        <p>We don't collect, process, use, or share any of your information.</p>

        <p>This means no analytics, no error reporting, no telemetry, nothing. Zero. Zip. Zilch. <span lang="es">Nada.</span></p>

        <i>This Privacy Policy was last updated: August 5, 2022</i>
    </div>
);

export default <PrivacyElement />;
