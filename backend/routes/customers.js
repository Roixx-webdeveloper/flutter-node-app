
const { Router } = require('express');
const { getCustomers, getCustomer, postCustomer, putCustomer, deleteCustomer } = require('../controllers/customers');
const { jwtValidation } = require('../middlewares/jwtValidation');


const router = Router();


router.get('/', getCustomers);
router.get('/:id', getCustomer);
router.post('/', postCustomer);
router.put('/:id', putCustomer);
router.delete('/:id', [
    jwtValidation,
], deleteCustomer);




module.exports = router;