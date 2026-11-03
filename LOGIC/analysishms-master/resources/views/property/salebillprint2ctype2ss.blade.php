<style>
    body {
        font-family: Arial, sans-serif;
        font-size: {{ posparameter()->salebillfont }}px;
        margin: 0;
        padding: 0;
        background-color: #f9f9f9;
    }

    .none {
        display: none;
    }

    .receipt {
        width: 72mm;
        padding: 10px;
        margin: 0 auto 17px auto;
        background: #fff;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        position: relative;
        /* Ensuring relative positioning for the overlay */
    }

    header {
        text-align: center;
        margin-bottom: 10px;
    }

    .header-branding {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        margin-bottom: 6px;
    }

    #addCompany {
        text-align: center;
        width: 100%;
    }

    #addCompany h2,
    #addCompany h3 {
        margin: 0 0 6px 0;
    }

    #logo {
        width: 70px;
        height: auto;
        display: none;
        margin: 0 auto 4px auto;
    }

    .line {
        border-bottom: 1px dashed;
        margin: 4px 0 4px 0;
    }

    footer .line {
        border-bottom: 1px dashed;
        margin: 12px 0 0 0 !important;
    }

    header h1 {
        font-size: {{ posparameter()->salebillfont + 4 }}px;
        margin: 0;
        font-weight: bold;
    }

    header h2 {
        font-size: {{ posparameter()->salebillfont + 2 }}px;
        margin: 5px 0;
        font-weight: normal;
    }

    header p {
        margin: 0;
        font-size: {{ posparameter()->salebillfont - 1 }}px;
    }

    .details-row {
        display: flex;
        justify-content: space-between;
        margin-bottom: 5px;
    }

    .receipt-details,
    footer {
        margin-bottom: 10px;
    }

    .receipt-details p,
    footer p {
        margin: 0;
        line-height: 1.4;
        font-size: {{ posparameter()->salebillfont - 1 }}px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    table th,
    table td {
        font-size: {{ posparameter()->salebillfont - 1 }}px;
        text-align: left;
        padding: 1px 4px 0 3px;
    }

    table.items tbody {
        border-bottom: 1px dashed;
    }

    table.items th {
        border-bottom: 1px dashed;
        font-weight: bold;
    }

    table tfoot td {
        font-weight: bold;
        padding-top: 5px;
    }

    .right-align {
        text-align: right;
    }

    p {
        margin: 0rem;
    }

    #customerdiv h3,
    #companydiv h3 {
        border-bottom: 1px dashed;
        font-size: {{ posparameter()->salebillfont + 1 }}px;
        padding: 0;
        margin: 0 0 2px 0;
    }

    .d-flex {
        display: flex;
    }

    .justify-space-between {
        justify-content: space-between;
    }

    .bold {
        font-weight: 700;
    }

    .cancel-overlay {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        pointer-events: none;
        display: none;
        justify-content: center;
        align-items: center;
        z-index: 1;
        overflow: hidden;
    }

    .cancel-text {
        font-size: 48px;
        font-weight: bold;
        color: red;
        text-transform: uppercase;
        animation: cancel-animation 1.5s linear infinite;
        white-space: nowrap;
    }

    @keyframes cancel-animation {
        0% {
            transform: translateY(100%);
        }

        100% {
            transform: translateY(-100%);
        }
    }

    @media print {
        body {
            background: none;
        }

        .receipt {
            box-shadow: none;
            position: relative;
        }

        .cancel-text {
            font-size: 36px;
        }

        .none {
            display: none;
        }

        table th,
        table td {
            font-size: {{ posparameter()->salebillfont - 2 }}px;
        }
    }
</style>
