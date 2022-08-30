import React from 'react';
import {productName} from '../../package.json';

import logo from '../icon/word-mark.svg';
import styles from './loading.css';

const LoadingElement = () => (
    <img
        alt={`${productName} loading icon`}
        src={logo}
        className={styles.loadingLogo}
    />
);

export default <LoadingElement />;
