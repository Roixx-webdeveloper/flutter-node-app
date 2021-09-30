
const { Router } = require('express');
const { getCustomers, getCustomer, postCustomer, putCustomer, deleteCustomer } = require('../controllers/customers');
const router = Router();


router.get('/', getCustomers);
router.get('/:id', getCustomer);
router.post('/' , postCustomer);
router.put('/:id', putCustomer);
router.delete('/:id', deleteCustomer);




module.exports = router;